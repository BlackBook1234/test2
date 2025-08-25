// import 'dart:js';

// ignore_for_file: use_build_context_synchronously

import 'package:aichatbot/src/core/api/api.dart';
import 'package:aichatbot/src/core/api/components/api_error.dart';
import 'package:aichatbot/src/core/api/model/_model.dart';
import 'package:aichatbot/src/core/sdk/utils/utils.dart';
import 'package:aichatbot/src/features/_common/interfaces/base_state.dart';
import 'package:aichatbot/src/features/app/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_cubit.freezed.dart';
part 'home_cubit.g.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());
  API get api => API();

  Future<void> init(BuildContext context) async {
    LoadingHelper.show();
    try {
      checkRange();
      await context.read<AppCubit>().getUserInfo(context: context);
    } finally {
      LoadingHelper.close();
    }
  }

  Future<void> chat({required BuildContext context, required String messageText}) async {
    try {
      emit(
        state.copyWith(
          isLoading: true,
          isSpeaking: false,
          messages: List.from(state.messages)..add(Message(text: messageText, sender: MessageSender.human, type: MessageType.text)),
        ),
      );

      dynamic res = await api.chat(messageText: messageText);
      emit(
        state.copyWith(
          isLoading: false,
          isSpeaking: true,
          messages: List.from(state.messages)..add(Message(text: res, sender: MessageSender.bot, type: MessageType.text)),
        ),
      );
      print("response: ${res}");
    } on APIError catch (e) {
      emit(state.copyWith(isLoading: false));
      print("errro: ${e.message}");
      if (context.mounted) {
        // showErrorDialog(context: context, message: e.message, title: 'Алдаа');
      }
    }
  }

  void clearData() {
    emit(state.copyWith());
  }

  bool currentRanges(TimeOfDay startTime, TimeOfDay endTime) {
    TimeOfDay now = TimeOfDay.now();
    // print(now);
    return ((now.hour > startTime.hour) || (now.hour == startTime.hour && now.minute >= startTime.minute)) && ((now.hour < endTime.hour) || (now.hour == endTime.hour && now.minute <= endTime.minute));
  }

  void checkRange() {
    if (SharedPrefs().isAuth) {
      if (currentRanges(const TimeOfDay(hour: 05, minute: 00), const TimeOfDay(hour: 11, minute: 59))) {
        emit(state.copyWith(profileLabel: SharedPrefs().language == 'mn' ? "Өглөөний мэнд" : "Good morning"));
      } else if (currentRanges(const TimeOfDay(hour: 12, minute: 00), const TimeOfDay(hour: 16, minute: 59))) {
        emit(state.copyWith(profileLabel: SharedPrefs().language == 'mn' ? "Өдрийн мэнд" : "Good afternoon"));
      } else if (currentRanges(const TimeOfDay(hour: 17, minute: 00), const TimeOfDay(hour: 23, minute: 59))) {
        emit(state.copyWith(profileLabel: SharedPrefs().language == 'mn' ? "Оройн мэнд" : "Good evening"));
      } else if (currentRanges(const TimeOfDay(hour: 00, minute: 00), const TimeOfDay(hour: 04, minute: 59))) {
        emit(state.copyWith(profileLabel: SharedPrefs().language == 'mn' ? "Оройн мэнд" : "Good evening"));
      } else {
        emit(state.copyWith(profileLabel: SharedPrefs().language == 'mn' ? "Сайн уу?" : "Hello?"));
      }
    } else {
      changeProfileDescription();
      emit(state.copyWith(profileLabel: SharedPrefs().language == 'mn' ? "Монпэйд" : "Welcome to"));
    }
  }

  void changeProfileDescription() {
    emit(state.copyWith(
      profileDescription: SharedPrefs().language == 'mn' ? 'Тавтай морил' : "Monpay",
    ));
  }

  void changeStatusLoading(bool isLoading) {
    emit(state.copyWith(isLoading: isLoading));
  }

  void changeStatusSpeak(bool isSpeaking) {
    emit(state.copyWith(isSpeaking: isSpeaking));
  }

  void updateSpokenLength(int spokenLength) {
    emit(state.copyWith(spokenLength: spokenLength));
  }
}
