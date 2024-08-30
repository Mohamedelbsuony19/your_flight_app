part of 'travel_data_bloc.dart';

@freezed
class TravelDataState with _$TravelDataState {
  const factory TravelDataState.initial() = _Initial;
  const factory TravelDataState.loadInProgress() = _LoadInProgress;
  const factory TravelDataState.loadSuccess(TravelEntityResponse travelData) =
      _LoadSuccess;
      const factory TravelDataState.loadFailure(String message) = _LoadFailure;
}
