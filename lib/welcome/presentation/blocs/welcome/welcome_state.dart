part of 'welcome_cubit.dart';

class WelcomeState extends Equatable {
  final RequestState? checkWelcomeStatus;

  const WelcomeState({
    this.checkWelcomeStatus,
  });

  WelcomeState copyWith({
    RequestState? checkWelcomeStatus,
  }) {
    return WelcomeState(
      checkWelcomeStatus: checkWelcomeStatus,
    );
  }

  @override
  List<Object?> get props => [checkWelcomeStatus];
}
