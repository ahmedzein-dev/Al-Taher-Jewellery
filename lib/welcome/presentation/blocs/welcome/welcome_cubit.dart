import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/enums/enums.dart';
import '../../../../core/use_cases/base_use_case.dart';
import '../../../domain/use_cases/check_welcome_status_use_case.dart';
import '../../../domain/use_cases/complete_welcome_use_case.dart';

part 'welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  final CompleteOnBoardingWelcomeUseCase _completeOnBoardingWelcomeUseCase;
  final CheckWelcomeStatusUseCase _checkWelcomeStatusUseCase;

  WelcomeCubit(
    this._completeOnBoardingWelcomeUseCase,
    this._checkWelcomeStatusUseCase,
  ) : super(const WelcomeState());

  Future<void> completeOnBoardingWelcome() async {
    await _completeOnBoardingWelcomeUseCase(
      const NoParameters(),
    );
  }

  Future<void> checkWelcomeStatus() async {
    emit(
      state.copyWith(
        checkWelcomeStatus: RequestState.loading,
      ),
    );
    final result = await _checkWelcomeStatusUseCase(
      const NoParameters(),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            checkWelcomeStatus: RequestState.error,
          ),
        );
      },
      (_) {
        emit(
          state.copyWith(
            checkWelcomeStatus: RequestState.success,
          ),
        );
      },
    );
  }
}
