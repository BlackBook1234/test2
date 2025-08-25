part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.loading() = _Loading;
  const factory SplashState.navigateToHome() = _NavigateToHome;
  const factory SplashState.navigateToInstruction() = _NavigateToInstruction;

  factory SplashState.fromJson(Map<String, dynamic> json) =>
      _$SplashStateFromJson(json);
}
