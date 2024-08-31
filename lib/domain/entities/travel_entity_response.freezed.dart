// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_entity_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TravelEntityResponse _$TravelEntityResponseFromJson(Map<String, dynamic> json) {
  return _TravelEntityResponse.fromJson(json);
}

/// @nodoc
mixin _$TravelEntityResponse {
  List<String> get cities => throw _privateConstructorUsedError;
  List<String> get ticketClasses => throw _privateConstructorUsedError;
  List<String> get tripType => throw _privateConstructorUsedError;
  List<Trip> get trips => throw _privateConstructorUsedError;

  /// Serializes this TravelEntityResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TravelEntityResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TravelEntityResponseCopyWith<TravelEntityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelEntityResponseCopyWith<$Res> {
  factory $TravelEntityResponseCopyWith(TravelEntityResponse value,
          $Res Function(TravelEntityResponse) then) =
      _$TravelEntityResponseCopyWithImpl<$Res, TravelEntityResponse>;
  @useResult
  $Res call(
      {List<String> cities,
      List<String> ticketClasses,
      List<String> tripType,
      List<Trip> trips});
}

/// @nodoc
class _$TravelEntityResponseCopyWithImpl<$Res,
        $Val extends TravelEntityResponse>
    implements $TravelEntityResponseCopyWith<$Res> {
  _$TravelEntityResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TravelEntityResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
    Object? ticketClasses = null,
    Object? tripType = null,
    Object? trips = null,
  }) {
    return _then(_value.copyWith(
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ticketClasses: null == ticketClasses
          ? _value.ticketClasses
          : ticketClasses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tripType: null == tripType
          ? _value.tripType
          : tripType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      trips: null == trips
          ? _value.trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<Trip>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelEntityResponseImplCopyWith<$Res>
    implements $TravelEntityResponseCopyWith<$Res> {
  factory _$$TravelEntityResponseImplCopyWith(_$TravelEntityResponseImpl value,
          $Res Function(_$TravelEntityResponseImpl) then) =
      __$$TravelEntityResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> cities,
      List<String> ticketClasses,
      List<String> tripType,
      List<Trip> trips});
}

/// @nodoc
class __$$TravelEntityResponseImplCopyWithImpl<$Res>
    extends _$TravelEntityResponseCopyWithImpl<$Res, _$TravelEntityResponseImpl>
    implements _$$TravelEntityResponseImplCopyWith<$Res> {
  __$$TravelEntityResponseImplCopyWithImpl(_$TravelEntityResponseImpl _value,
      $Res Function(_$TravelEntityResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TravelEntityResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
    Object? ticketClasses = null,
    Object? tripType = null,
    Object? trips = null,
  }) {
    return _then(_$TravelEntityResponseImpl(
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ticketClasses: null == ticketClasses
          ? _value._ticketClasses
          : ticketClasses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tripType: null == tripType
          ? _value._tripType
          : tripType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      trips: null == trips
          ? _value._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<Trip>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelEntityResponseImpl implements _TravelEntityResponse {
  const _$TravelEntityResponseImpl(
      {required final List<String> cities,
      required final List<String> ticketClasses,
      required final List<String> tripType,
      required final List<Trip> trips})
      : _cities = cities,
        _ticketClasses = ticketClasses,
        _tripType = tripType,
        _trips = trips;

  factory _$TravelEntityResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelEntityResponseImplFromJson(json);

  final List<String> _cities;
  @override
  List<String> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  final List<String> _ticketClasses;
  @override
  List<String> get ticketClasses {
    if (_ticketClasses is EqualUnmodifiableListView) return _ticketClasses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ticketClasses);
  }

  final List<String> _tripType;
  @override
  List<String> get tripType {
    if (_tripType is EqualUnmodifiableListView) return _tripType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripType);
  }

  final List<Trip> _trips;
  @override
  List<Trip> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  @override
  String toString() {
    return 'TravelEntityResponse(cities: $cities, ticketClasses: $ticketClasses, tripType: $tripType, trips: $trips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelEntityResponseImpl &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality()
                .equals(other._ticketClasses, _ticketClasses) &&
            const DeepCollectionEquality().equals(other._tripType, _tripType) &&
            const DeepCollectionEquality().equals(other._trips, _trips));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cities),
      const DeepCollectionEquality().hash(_ticketClasses),
      const DeepCollectionEquality().hash(_tripType),
      const DeepCollectionEquality().hash(_trips));

  /// Create a copy of TravelEntityResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelEntityResponseImplCopyWith<_$TravelEntityResponseImpl>
      get copyWith =>
          __$$TravelEntityResponseImplCopyWithImpl<_$TravelEntityResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelEntityResponseImplToJson(
      this,
    );
  }
}

abstract class _TravelEntityResponse implements TravelEntityResponse {
  const factory _TravelEntityResponse(
      {required final List<String> cities,
      required final List<String> ticketClasses,
      required final List<String> tripType,
      required final List<Trip> trips}) = _$TravelEntityResponseImpl;

  factory _TravelEntityResponse.fromJson(Map<String, dynamic> json) =
      _$TravelEntityResponseImpl.fromJson;

  @override
  List<String> get cities;
  @override
  List<String> get ticketClasses;
  @override
  List<String> get tripType;
  @override
  List<Trip> get trips;

  /// Create a copy of TravelEntityResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TravelEntityResponseImplCopyWith<_$TravelEntityResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Trip _$TripFromJson(Map<String, dynamic> json) {
  return _Trip.fromJson(json);
}

/// @nodoc
mixin _$Trip {
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get departureDate => throw _privateConstructorUsedError;
  String get ticketClass => throw _privateConstructorUsedError;
  String get tripType => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  Passengers get passengers => throw _privateConstructorUsedError;

  /// Serializes this Trip to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res, Trip>;
  @useResult
  $Res call(
      {String from,
      String to,
      String departureDate,
      String ticketClass,
      String tripType,
      int price,
      Passengers passengers});

  $PassengersCopyWith<$Res> get passengers;
}

/// @nodoc
class _$TripCopyWithImpl<$Res, $Val extends Trip>
    implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? departureDate = null,
    Object? ticketClass = null,
    Object? tripType = null,
    Object? price = null,
    Object? passengers = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as String,
      ticketClass: null == ticketClass
          ? _value.ticketClass
          : ticketClass // ignore: cast_nullable_to_non_nullable
              as String,
      tripType: null == tripType
          ? _value.tripType
          : tripType // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      passengers: null == passengers
          ? _value.passengers
          : passengers // ignore: cast_nullable_to_non_nullable
              as Passengers,
    ) as $Val);
  }

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassengersCopyWith<$Res> get passengers {
    return $PassengersCopyWith<$Res>(_value.passengers, (value) {
      return _then(_value.copyWith(passengers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripImplCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$TripImplCopyWith(
          _$TripImpl value, $Res Function(_$TripImpl) then) =
      __$$TripImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String from,
      String to,
      String departureDate,
      String ticketClass,
      String tripType,
      int price,
      Passengers passengers});

  @override
  $PassengersCopyWith<$Res> get passengers;
}

/// @nodoc
class __$$TripImplCopyWithImpl<$Res>
    extends _$TripCopyWithImpl<$Res, _$TripImpl>
    implements _$$TripImplCopyWith<$Res> {
  __$$TripImplCopyWithImpl(_$TripImpl _value, $Res Function(_$TripImpl) _then)
      : super(_value, _then);

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? departureDate = null,
    Object? ticketClass = null,
    Object? tripType = null,
    Object? price = null,
    Object? passengers = null,
  }) {
    return _then(_$TripImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as String,
      ticketClass: null == ticketClass
          ? _value.ticketClass
          : ticketClass // ignore: cast_nullable_to_non_nullable
              as String,
      tripType: null == tripType
          ? _value.tripType
          : tripType // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      passengers: null == passengers
          ? _value.passengers
          : passengers // ignore: cast_nullable_to_non_nullable
              as Passengers,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripImpl implements _Trip {
  const _$TripImpl(
      {required this.from,
      required this.to,
      required this.departureDate,
      required this.ticketClass,
      required this.tripType,
      required this.price,
      required this.passengers});

  factory _$TripImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripImplFromJson(json);

  @override
  final String from;
  @override
  final String to;
  @override
  final String departureDate;
  @override
  final String ticketClass;
  @override
  final String tripType;
  @override
  final int price;
  @override
  final Passengers passengers;

  @override
  String toString() {
    return 'Trip(from: $from, to: $to, departureDate: $departureDate, ticketClass: $ticketClass, tripType: $tripType, price: $price, passengers: $passengers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.departureDate, departureDate) ||
                other.departureDate == departureDate) &&
            (identical(other.ticketClass, ticketClass) ||
                other.ticketClass == ticketClass) &&
            (identical(other.tripType, tripType) ||
                other.tripType == tripType) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.passengers, passengers) ||
                other.passengers == passengers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, to, departureDate,
      ticketClass, tripType, price, passengers);

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      __$$TripImplCopyWithImpl<_$TripImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripImplToJson(
      this,
    );
  }
}

abstract class _Trip implements Trip {
  const factory _Trip(
      {required final String from,
      required final String to,
      required final String departureDate,
      required final String ticketClass,
      required final String tripType,
      required final int price,
      required final Passengers passengers}) = _$TripImpl;

  factory _Trip.fromJson(Map<String, dynamic> json) = _$TripImpl.fromJson;

  @override
  String get from;
  @override
  String get to;
  @override
  String get departureDate;
  @override
  String get ticketClass;
  @override
  String get tripType;
  @override
  int get price;
  @override
  Passengers get passengers;

  /// Create a copy of Trip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripImplCopyWith<_$TripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Passengers _$PassengersFromJson(Map<String, dynamic> json) {
  return _Passengers.fromJson(json);
}

/// @nodoc
mixin _$Passengers {
  int get adults => throw _privateConstructorUsedError;
  int get children => throw _privateConstructorUsedError;

  /// Serializes this Passengers to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Passengers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PassengersCopyWith<Passengers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassengersCopyWith<$Res> {
  factory $PassengersCopyWith(
          Passengers value, $Res Function(Passengers) then) =
      _$PassengersCopyWithImpl<$Res, Passengers>;
  @useResult
  $Res call({int adults, int children});
}

/// @nodoc
class _$PassengersCopyWithImpl<$Res, $Val extends Passengers>
    implements $PassengersCopyWith<$Res> {
  _$PassengersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Passengers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adults = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      adults: null == adults
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PassengersImplCopyWith<$Res>
    implements $PassengersCopyWith<$Res> {
  factory _$$PassengersImplCopyWith(
          _$PassengersImpl value, $Res Function(_$PassengersImpl) then) =
      __$$PassengersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int adults, int children});
}

/// @nodoc
class __$$PassengersImplCopyWithImpl<$Res>
    extends _$PassengersCopyWithImpl<$Res, _$PassengersImpl>
    implements _$$PassengersImplCopyWith<$Res> {
  __$$PassengersImplCopyWithImpl(
      _$PassengersImpl _value, $Res Function(_$PassengersImpl) _then)
      : super(_value, _then);

  /// Create a copy of Passengers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adults = null,
    Object? children = null,
  }) {
    return _then(_$PassengersImpl(
      adults: null == adults
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassengersImpl implements _Passengers {
  const _$PassengersImpl({required this.adults, required this.children});

  factory _$PassengersImpl.fromJson(Map<String, dynamic> json) =>
      _$$PassengersImplFromJson(json);

  @override
  final int adults;
  @override
  final int children;

  @override
  String toString() {
    return 'Passengers(adults: $adults, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassengersImpl &&
            (identical(other.adults, adults) || other.adults == adults) &&
            (identical(other.children, children) ||
                other.children == children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, adults, children);

  /// Create a copy of Passengers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassengersImplCopyWith<_$PassengersImpl> get copyWith =>
      __$$PassengersImplCopyWithImpl<_$PassengersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PassengersImplToJson(
      this,
    );
  }
}

abstract class _Passengers implements Passengers {
  const factory _Passengers(
      {required final int adults,
      required final int children}) = _$PassengersImpl;

  factory _Passengers.fromJson(Map<String, dynamic> json) =
      _$PassengersImpl.fromJson;

  @override
  int get adults;
  @override
  int get children;

  /// Create a copy of Passengers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassengersImplCopyWith<_$PassengersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
