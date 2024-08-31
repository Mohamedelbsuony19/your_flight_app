part of 'travel_data_bloc.dart';

@freezed
class TravelDataEvent with _$TravelDataEvent {
  const factory TravelDataEvent.getTravelData() = _GetTravelData;
  const factory TravelDataEvent.search({
    required String fromCity,
    required String toCity,
    required String date,
    required String tripType,
    required String travelClass,
  }) = _Search;
}