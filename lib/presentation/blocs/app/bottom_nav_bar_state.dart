part of 'bottom_nav_bar_bloc.dart';

abstract class BottomNavBarState extends Equatable {
  const BottomNavBarState();

  @override
  List<Object> get props => [];
}

class BottomNavBarSuccess extends BottomNavBarState {
  final int selectedIndex;

  const BottomNavBarSuccess({required this.selectedIndex});

  @override
  List<Object> get props => [selectedIndex];
}
