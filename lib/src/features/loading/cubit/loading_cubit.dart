import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'loading_state.dart';

class LoadingCubit extends Cubit<LoadingState> {
  LoadingCubit() : super(LoadingInitial());

  void show() {
    emit(LoadingShow());
  }

  void exit() {
    emit(LoadingInitial());
  }
}
