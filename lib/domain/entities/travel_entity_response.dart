import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_entity_response.freezed.dart';
part 'travel_entity_response.g.dart';

@freezed
class TravelEntityResponse with _$TravelEntityResponse {
  const factory TravelEntityResponse({
    required List<String> cities,
    required List<String> ticketClasses,
    required List<String> tripType,
    required List<Trip> trips,
  }) = _TravelEntityResponse;

  factory TravelEntityResponse.fromJson(Map<String, dynamic> json) =>
      _$TravelEntityResponseFromJson(json);
}

@freezed
class Trip with _$Trip {
  const factory Trip({
    required String from,
    required String to,
    required String departureDate,
    required String ticketClass,
    required String tripType,
    required int price,
    required Passengers passengers,
  }) = _Trip;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
}

@freezed
class Passengers with _$Passengers {
  const factory Passengers({
    required int adults,
    required int children,
  }) = _Passengers;

  factory Passengers.fromJson(Map<String, dynamic> json) =>
      _$PassengersFromJson(json);
}
