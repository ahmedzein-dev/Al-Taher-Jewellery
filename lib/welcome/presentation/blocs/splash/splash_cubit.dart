import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState());

  Future<void> endSplash() async {
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );
    emit(
      state.copyWith(
        splashEnded: !state.splashEnded,
      ),
    );
  }
}
