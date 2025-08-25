import 'package:aichatbot/src/core/sdk/constants/assets.dart';
import 'package:aichatbot/src/routes/app_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:lottie/lottie.dart';
import '../cubit/splash_cubit.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        context.read<SplashCubit>().appStarted(context);
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return BlocConsumer<SplashCubit, SplashState>(listener: (context, state) {
      state.mapOrNull(
        navigateToHome: (_) => AutoRouter.of(context).replace(const ChatWithAiRoute()),
        navigateToInstruction: (_) => AutoRouter.of(context).replace(const InstructionRoute()),
      );
    }, builder: (context, state) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: Center(
          child: Lottie.asset(
            Assets.splashScreen,
            repeat: false,
            controller: _controller,
            animate: true,
            onLoaded: (composition) {
              _controller
                ..duration = composition.duration
                ..forward();
            },
          ),
        ),
      );
    });
  }
}
