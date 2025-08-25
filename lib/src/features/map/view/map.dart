import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;
import 'package:aichatbot/src/core/sdk/constants/assets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

@RoutePage()
class MBTilesProviderPage extends StatefulWidget {
  const MBTilesProviderPage({super.key});

  @override
  State<MBTilesProviderPage> createState() => _MBTilesProviderPageState();
}

class _MBTilesProviderPageState extends State<MBTilesProviderPage> {
  late final MBTilesProvider _provider;
  bool _ready = false;

  @override
  void initState() {
    super.initState();
    _provider = MBTilesProvider(mbtilesPath: Assets.map);
    _initialize();
  }

  Future<void> _initialize() async {
    await _provider.open();
    setState(() {
      _ready = true;
    });
  }

  @override
  void dispose() {
    _provider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_ready) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(title: const Text("MBTiles Map")),
      body: FlutterMap(
        options: MapOptions(
            // center: LatLng(47.920, 106.917), // 🌏 Та өөрөө тохируулна уу
            // zoom: 12,
            ),
        children: [
          TileLayer(
            tileProvider: _provider,
            maxZoom: 18,
            minZoom: 1,
            // backgroundColor: Colors.black,
            // no URL here — using MBTiles provider
          )
        ],
      ),
    );
  }
}

class MBTilesProvider extends TileProvider {
  final String mbtilesPath;
  Database? _db;

  MBTilesProvider({required this.mbtilesPath});

  Future<void> open() async {
    if (_db != null) return;
    final docsDir = await getApplicationDocumentsDirectory();
    final file = File('${docsDir.path}/mongolia.mbtiles');

    if (!await file.exists()) {
      final byteData = await rootBundle.load('assets/map/mongolia.mbtiles');
      await file.writeAsBytes(byteData.buffer.asUint8List());
    }

    _db = await openDatabase(file.path, readOnly: true);
  }

  @override
  ImageProvider getImage(TileCoordinates coords, TileLayer options) {
    if (_db == null) throw Exception("DB is not opened");
    return MBTileImageProvider(
      db: _db!,
      x: coords.x.toInt(),
      y: coords.y.toInt(),
      z: coords.z.toInt(),
    );
  }

  Future<void> dispose() async {
    await _db?.close();
  }
}

class MBTileImageProvider extends ImageProvider<MBTileImageProvider> {
  final Database db;
  final int x, y, z;

  MBTileImageProvider({required this.db, required this.x, required this.y, required this.z});

  @override
  Future<MBTileImageProvider> obtainKey(ImageConfiguration configuration) {
    return SynchronousFuture<MBTileImageProvider>(this);
  }

  @override
  ImageStreamCompleter loadImage(MBTileImageProvider key, ImageDecoderCallback decode) {
    final stream = StreamController<ImageInfo>();

    () async {
      final tiles = await db.query(
        'tiles',
        where: 'zoom_level = ? AND tile_column = ? AND tile_row = ?',
        whereArgs: [z, x, (1 << z) - 1 - y], // Y-г урвуу
      );

      if (tiles.isNotEmpty) {
        final tile = tiles.first;
        final blob = tile['tile_data'] as Uint8List;

        final buffer = await ui.ImmutableBuffer.fromUint8List(blob);
        final codec = await ui.instantiateImageCodecFromBuffer(buffer);
        final frame = await codec.getNextFrame();

        stream.add(ImageInfo(image: frame.image));
      } else {
        stream.addError('Tile not found: z=$z x=$x y=$y');
      }

      await stream.close();
    }();

    return OneFrameImageStreamCompleter(stream.stream.first);
  }

  @override
  bool operator ==(Object other) => other is MBTileImageProvider && x == other.x && y == other.y && z == other.z;

  @override
  int get hashCode => Object.hash(x, y, z);
}
