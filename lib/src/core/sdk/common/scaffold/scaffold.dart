import 'dart:ui' as ui;

import 'package:aichatbot/src/core/sdk/constants/assets.dart';
import 'package:aichatbot/src/features/loading/cubit/loading_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class ScaffoldAI extends StatelessWidget {
  const ScaffoldAI({super.key, required this.body});

  final Widget body;

  static Widget appBar({required Widget child, String? title, bool isRound = true}) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: Text(title ?? ''),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(),
      ),
      body: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)), //font size ignore
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            body,
            BlocConsumer<LoadingCubit, LoadingState>(listener: (context, state) {
              if (state is LoadingInitial) {}
            }, builder: (context, state) {
              if (state is LoadingShow) {
                return WillPopScope(
                  onWillPop: () async {
                    return false;
                  },
                  child: Stack(children: [
                    Center(
                      child: BackdropFilter(
                        filter: ui.ImageFilter.blur(
                          sigmaX: 10.0,
                          sigmaY: 10.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.transparent,
                          ),
                          height: 100,
                          width: 100,
                          child: Lottie.asset(
                            Assets.loading,
                            repeat: true,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                        child: GestureDetector(
                      onTap: () {},
                      onHorizontalDragCancel: () {},
                    ))
                  ]),
                );
              } else {
                return const Text('');
              }
            }),
          ],
        ),
      ),
    );
  }
}
