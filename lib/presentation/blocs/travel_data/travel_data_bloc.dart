import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:samh_task_app/app/contracts/travels.dart';
import 'package:samh_task_app/core/inpusts/no_params.dart';

import '../../../domain/entities/travel_entity_response.dart';

part 'travel_data_bloc.freezed.dart';
part 'travel_data_event.dart';
part 'travel_data_state.dart';

class TravelDataBloc extends Bloc<TravelDataEvent, TravelDataState> {
  static int selectedIndex = 1;

  final GetTravelsDataBaseCommand getTravelsDataCommand;
  TravelDataBloc(this.getTravelsDataCommand)
      : super(TravelDataState.initial()) {
    on<TravelDataEvent>((event, emit) async {
      await event.maybeMap(
        orElse: () async {},
        getTravelData: (value) async {
          emit(TravelDataState.loadInProgress());
          final result = await getTravelsDataCommand.call(NoParams());
          await result.fold(
            (l) async => emit(TravelDataState.loadFailure(l.message)),
            (r) async => emit(TravelDataState.loadSuccess(travelData: r)),
          );
        },
        search: (value) async {
          final currentState = state;
          if (currentState is _LoadSuccess) {
            final filteredTrips = currentState.travelData!.trips.where((trip) {
              final matchesFromCity = trip.from == value.fromCity;
              final matchesToCity = trip.to == value.toCity;
              final matchesDate = trip.departureDate == value.date;
              final matchesTripType = trip.tripType == value.tripType;
              final matchesTravelClass = trip.ticketClass == value.travelClass;

              return matchesFromCity &&
                  matchesToCity &&
                  matchesDate &&
                  matchesTripType &&
                  matchesTravelClass;
            }).toList();

            emit(currentState.copyWith(trips: filteredTrips, endSearch: true));
          }
        },
      );
    });
  }
}
