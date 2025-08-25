part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  @Implements<BaseState>()
  const factory HomeState({
    @Default("") String profileLabel,
    @Default("") String profileDescription,
    @Default([]) List<Message> messages,
    @Default(false) bool isLoading,
    @Default(false) bool isSpeaking,
    @Default(0) int spokenLength,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState();

  factory HomeState.fromJson(Map<String, dynamic> json) => _$HomeStateFromJson(json);
}
