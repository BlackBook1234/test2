part of 'app_cubit.dart';

enum AppStateOptions {
  full,
  limited,
  signing,
}

@freezed
class AppState with _$AppState {
  const AppState._();

  @Implements<BaseState>()
  const factory AppState({
    @Default(UserInfoResult()) UserInfoResult userInfo,
    @Default("") String appVersion,
    @Default(AppStateOptions.limited) AppStateOptions appState,
  }) = _AppState;

  factory AppState.initial() => const AppState();

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
