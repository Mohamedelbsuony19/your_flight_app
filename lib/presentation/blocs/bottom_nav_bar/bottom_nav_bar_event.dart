part of 'bottom_nav_bar_bloc.dart';

abstract class BottomNavBarEvent extends Equatable {
  const BottomNavBarEvent();

  @override
  List<Object> get props => [];
}

class ChangeIndexEvent extends BottomNavBarEvent {
  final int selectedIndex;

  const ChangeIndexEvent(this.selectedIndex);

  @override
  List<Object> get props => [selectedIndex];
}
