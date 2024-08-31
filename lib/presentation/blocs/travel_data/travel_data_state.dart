part of 'travel_data_bloc.dart';

@unfreezed
class TravelDataState with _$TravelDataState {
   factory TravelDataState.initial() = _Initial;
   factory TravelDataState.loadInProgress() = _LoadInProgress;
   factory TravelDataState.loadSuccess({
    TravelEntityResponse? travelData,
    List<Trip>? trips,
    @Default(false) bool endSearch,
  }) = _LoadSuccess;
   factory TravelDataState.loadFailure(String message) = _LoadFailure;
}
