part of 'splash_cubit.dart';

class SplashState extends Equatable {
  final bool splashEnded;

  const SplashState({
    this.splashEnded = false,
  });

  SplashState copyWith({
    bool? splashEnded,
  }) {
    return SplashState(
      splashEnded: splashEnded ?? this.splashEnded,
    );
  }

  @override
  List<Object> get props => [splashEnded];
}
