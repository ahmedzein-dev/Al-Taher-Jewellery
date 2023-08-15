part of 'nav_bar_cubit.dart';

class NavBarState extends Equatable {
  final int index;

  const NavBarState({
    this.index = 1,
  });

  NavBarState copyWith({
    int? index,
  }) {
    return NavBarState(
      index: index ?? this.index,
    );
  }

  @override
  List<Object> get props => [index];
}
