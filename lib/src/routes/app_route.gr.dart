// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aichatbot/src/features/home/views/home.dart' as _i2;
import 'package:aichatbot/src/features/home/views/pages/chat_with_ai.dart'
    as _i1;
import 'package:aichatbot/src/features/home/views/pages/speak_with_ai.dart'
    as _i5;
import 'package:aichatbot/src/features/instruction/view/instruction_page.dart'
    as _i3;
import 'package:aichatbot/src/features/map/view/map.dart' as _i4;
import 'package:aichatbot/src/features/splash/view/splash_page.dart' as _i6;
import 'package:auto_route/auto_route.dart' as _i7;

/// generated route for
/// [_i1.ChatWithAiPage]
class ChatWithAiRoute extends _i7.PageRouteInfo<void> {
  const ChatWithAiRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ChatWithAiRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatWithAiRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.ChatWithAiPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.InstructionPage]
class InstructionRoute extends _i7.PageRouteInfo<void> {
  const InstructionRoute({List<_i7.PageRouteInfo>? children})
      : super(
          InstructionRoute.name,
          initialChildren: children,
        );

  static const String name = 'InstructionRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.InstructionPage();
    },
  );
}

/// generated route for
/// [_i4.MBTilesProviderPage]
class MBTilesProviderRoute extends _i7.PageRouteInfo<void> {
  const MBTilesProviderRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MBTilesProviderRoute.name,
          initialChildren: children,
        );

  static const String name = 'MBTilesProviderRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.MBTilesProviderPage();
    },
  );
}

/// generated route for
/// [_i5.SpeakToAIPage]
class SpeakToAIRoute extends _i7.PageRouteInfo<void> {
  const SpeakToAIRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SpeakToAIRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpeakToAIRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.SpeakToAIPage();
    },
  );
}

/// generated route for
/// [_i6.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.SplashPage();
    },
  );
}
