import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:samh_task_app/app/contracts/travels.dart';
import 'package:samh_task_app/core/inpusts/no_params.dart';

import '../../../app/commands/get_travels_data_impl_command.dart';
import '../../../domain/entities/travel_entity_response.dart';

part 'travel_data_bloc.freezed.dart';
part 'travel_data_event.dart';
part 'travel_data_state.dart';

class TravelDataBloc extends Bloc<TravelDataEvent, TravelDataState> {
  final GetTravelsDataBaseCommand getTravelsDataCommand;
  TravelDataBloc(this.getTravelsDataCommand)
      : super(const TravelDataState.initial()) {
    on<TravelDataEvent>((event, emit) async {
      await event.maybeMap(
        orElse: () async {},
        getTravelData: (value) async {
          emit(const TravelDataState.loadInProgress());
          final result = await getTravelsDataCommand.call(NoParams());
          await result.fold(
            (l) async => emit(TravelDataState.loadFailure(l.message)),
            (r) async => emit(TravelDataState.loadSuccess(r)),
          );
        },
      );
    });
  }
}
