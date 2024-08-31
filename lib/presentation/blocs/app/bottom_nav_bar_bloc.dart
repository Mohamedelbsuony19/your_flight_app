import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_nav_bar_event.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarBloc extends Bloc<BottomNavBarEvent, BottomNavBarState> {
  BottomNavBarBloc() : super(const BottomNavBarSuccess(selectedIndex: 1)) {
    on<ChangeIndexEvent>(_onChangeIndex, transformer: sequential());
  }

  Future<void> _onChangeIndex(
    ChangeIndexEvent event,
    Emitter<BottomNavBarState> emit,
  ) async {
    emit(BottomNavBarSuccess(selectedIndex: event.selectedIndex));
  }
}
