// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_entity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelEntityResponseImpl _$$TravelEntityResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelEntityResponseImpl(
      cities:
          (json['cities'] as List<dynamic>).map((e) => e as String).toList(),
      ticketClasses: (json['ticketClasses'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      trips: (json['trips'] as List<dynamic>)
          .map((e) => Trip.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TravelEntityResponseImplToJson(
        _$TravelEntityResponseImpl instance) =>
    <String, dynamic>{
      'cities': instance.cities,
      'ticketClasses': instance.ticketClasses,
      'trips': instance.trips,
    };

_$TripImpl _$$TripImplFromJson(Map<String, dynamic> json) => _$TripImpl(
      from: json['from'] as String,
      to: json['to'] as String,
      departureDate: json['departureDate'] as String,
      ticketClass: json['ticketClass'] as String,
      tripType: json['tripType'] as String,
      price: (json['price'] as num).toInt(),
      passengers:
          Passengers.fromJson(json['passengers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TripImplToJson(_$TripImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'departureDate': instance.departureDate,
      'ticketClass': instance.ticketClass,
      'tripType': instance.tripType,
      'price': instance.price,
      'passengers': instance.passengers,
    };

_$PassengersImpl _$$PassengersImplFromJson(Map<String, dynamic> json) =>
    _$PassengersImpl(
      adults: (json['adults'] as num).toInt(),
      children: (json['children'] as num).toInt(),
    );

Map<String, dynamic> _$$PassengersImplToJson(_$PassengersImpl instance) =>
    <String, dynamic>{
      'adults': instance.adults,
      'children': instance.children,
    };
