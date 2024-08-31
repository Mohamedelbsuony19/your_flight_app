// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTravelData,
    required TResult Function(String fromCity, String toCity, String date,
            String tripType, String travelClass)
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTravelData,
    TResult? Function(String fromCity, String toCity, String date,
            String tripType, String travelClass)?
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTravelData,
    TResult Function(String fromCity, String toCity, String date,
            String tripType, String travelClass)?
        search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTravelData value) getTravelData,
    required TResult Function(_Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTravelData value)? getTravelData,
    TResult? Function(_Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTravelData value)? getTravelData,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDataEventCopyWith<$Res> {
  factory $TravelDataEventCopyWith(
          TravelDataEvent value, $Res Function(TravelDataEvent) then) =
      _$TravelDataEventCopyWithImpl<$Res, TravelDataEvent>;
}

/// @nodoc
class _$TravelDataEventCopyWithImpl<$Res, $Val extends TravelDataEvent>
    implements $TravelDataEventCopyWith<$Res> {
  _$TravelDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TravelDataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTravelDataImplCopyWith<$Res> {
  factory _$$GetTravelDataImplCopyWith(
          _$GetTravelDataImpl value, $Res Function(_$GetTravelDataImpl) then) =
      __$$GetTravelDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTravelDataImplCopyWithImpl<$Res>
    extends _$TravelDataEventCopyWithImpl<$Res, _$GetTravelDataImpl>
    implements _$$GetTravelDataImplCopyWith<$Res> {
  __$$GetTravelDataImplCopyWithImpl(
      _$GetTravelDataImpl _value, $Res Function(_$GetTravelDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TravelDataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetTravelDataImpl implements _GetTravelData {
  const _$GetTravelDataImpl();

  @override
  String toString() {
    return 'TravelDataEvent.getTravelData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTravelDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTravelData,
    required TResult Function(String fromCity, String toCity, String date,
            String tripType, String travelClass)
        search,
  }) {
    return getTravelData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTravelData,
    TResult? Function(String fromCity, String toCity, String date,
            String tripType, String travelClass)?
        search,
  }) {
    return getTravelData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTravelData,
    TResult Function(String fromCity, String toCity, String date,
            String tripType, String travelClass)?
        search,
    required TResult orElse(),
  }) {
    if (getTravelData != null) {
      return getTravelData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTravelData value) getTravelData,
    required TResult Function(_Search value) search,
  }) {
    return getTravelData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTravelData value)? getTravelData,
    TResult? Function(_Search value)? search,
  }) {
    return getTravelData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTravelData value)? getTravelData,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (getTravelData != null) {
      return getTravelData(this);
    }
    return orElse();
  }
}

abstract class _GetTravelData implements TravelDataEvent {
  const factory _GetTravelData() = _$GetTravelDataImpl;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fromCity,
      String toCity,
      String date,
      String tripType,
      String travelClass});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$TravelDataEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of TravelDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromCity = null,
    Object? toCity = null,
    Object? date = null,
    Object? tripType = null,
    Object? travelClass = null,
  }) {
    return _then(_$SearchImpl(
      fromCity: null == fromCity
          ? _value.fromCity
          : fromCity // ignore: cast_nullable_to_non_nullable
              as String,
      toCity: null == toCity
          ? _value.toCity
          : toCity // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      tripType: null == tripType
          ? _value.tripType
          : tripType // ignore: cast_nullable_to_non_nullable
              as String,
      travelClass: null == travelClass
          ? _value.travelClass
          : travelClass // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl(
      {required this.fromCity,
      required this.toCity,
      required this.date,
      required this.tripType,
      required this.travelClass});

  @override
  final String fromCity;
  @override
  final String toCity;
  @override
  final String date;
  @override
  final String tripType;
  @override
  final String travelClass;

  @override
  String toString() {
    return 'TravelDataEvent.search(fromCity: $fromCity, toCity: $toCity, date: $date, tripType: $tripType, travelClass: $travelClass)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.fromCity, fromCity) ||
                other.fromCity == fromCity) &&
            (identical(other.toCity, toCity) || other.toCity == toCity) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.tripType, tripType) ||
                other.tripType == tripType) &&
            (identical(other.travelClass, travelClass) ||
                other.travelClass == travelClass));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fromCity, toCity, date, tripType, travelClass);

  /// Create a copy of TravelDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTravelData,
    required TResult Function(String fromCity, String toCity, String date,
            String tripType, String travelClass)
        search,
  }) {
    return search(fromCity, toCity, date, tripType, travelClass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTravelData,
    TResult? Function(String fromCity, String toCity, String date,
            String tripType, String travelClass)?
        search,
  }) {
    return search?.call(fromCity, toCity, date, tripType, travelClass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTravelData,
    TResult Function(String fromCity, String toCity, String date,
            String tripType, String travelClass)?
        search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(fromCity, toCity, date, tripType, travelClass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTravelData value) getTravelData,
    required TResult Function(_Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTravelData value)? getTravelData,
    TResult? Function(_Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTravelData value)? getTravelData,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements TravelDataEvent {
  const factory _Search(
      {required final String fromCity,
      required final String toCity,
      required final String date,
      required final String tripType,
      required final String travelClass}) = _$SearchImpl;

  String get fromCity;
  String get toCity;
  String get date;
  String get tripType;
  String get travelClass;

  /// Create a copy of TravelDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TravelDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            TravelEntityResponse? travelData, List<Trip>? trips, bool endSearch)
        loadSuccess,
    required TResult Function(String message) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(TravelEntityResponse? travelData, List<Trip>? trips,
            bool endSearch)?
        loadSuccess,
    TResult? Function(String message)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(TravelEntityResponse? travelData, List<Trip>? trips,
            bool endSearch)?
        loadSuccess,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDataStateCopyWith<$Res> {
  factory $TravelDataStateCopyWith(
          TravelDataState value, $Res Function(TravelDataState) then) =
      _$TravelDataStateCopyWithImpl<$Res, TravelDataState>;
}

/// @nodoc
class _$TravelDataStateCopyWithImpl<$Res, $Val extends TravelDataState>
    implements $TravelDataStateCopyWith<$Res> {
  _$TravelDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TravelDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TravelDataStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TravelDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  _$InitialImpl();

  @override
  String toString() {
    return 'TravelDataState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            TravelEntityResponse? travelData, List<Trip>? trips, bool endSearch)
        loadSuccess,
    required TResult Function(String message) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(TravelEntityResponse? travelData, List<Trip>? trips,
            bool endSearch)?
        loadSuccess,
    TResult? Function(String message)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(TravelEntityResponse? travelData, List<Trip>? trips,
            bool endSearch)?
        loadSuccess,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TravelDataState {
  factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$TravelDataStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of TravelDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  _$LoadInProgressImpl();

  @override
  String toString() {
    return 'TravelDataState.loadInProgress()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            TravelEntityResponse? travelData, List<Trip>? trips, bool endSearch)
        loadSuccess,
    required TResult Function(String message) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(TravelEntityResponse? travelData, List<Trip>? trips,
            bool endSearch)?
        loadSuccess,
    TResult? Function(String message)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(TravelEntityResponse? travelData, List<Trip>? trips,
            bool endSearch)?
        loadSuccess,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements TravelDataState {
  factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TravelEntityResponse? travelData, List<Trip>? trips, bool endSearch});

  $TravelEntityResponseCopyWith<$Res>? get travelData;
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$TravelDataStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TravelDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travelData = freezed,
    Object? trips = freezed,
    Object? endSearch = null,
  }) {
    return _then(_$LoadSuccessImpl(
      travelData: freezed == travelData
          ? _value.travelData
          : travelData // ignore: cast_nullable_to_non_nullable
              as TravelEntityResponse?,
      trips: freezed == trips
          ? _value.trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<Trip>?,
      endSearch: null == endSearch
          ? _value.endSearch
          : endSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of TravelDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TravelEntityResponseCopyWith<$Res>? get travelData {
    if (_value.travelData == null) {
      return null;
    }

    return $TravelEntityResponseCopyWith<$Res>(_value.travelData!, (value) {
      return _then(_value.copyWith(travelData: value));
    });
  }
}

/// @nodoc

class _$LoadSuccessImpl implements _LoadSuccess {
  _$LoadSuccessImpl({this.travelData, this.trips, this.endSearch = false});

  @override
  TravelEntityResponse? travelData;
  @override
  List<Trip>? trips;
  @override
  @JsonKey()
  bool endSearch;

  @override
  String toString() {
    return 'TravelDataState.loadSuccess(travelData: $travelData, trips: $trips, endSearch: $endSearch)';
  }

  /// Create a copy of TravelDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            TravelEntityResponse? travelData, List<Trip>? trips, bool endSearch)
        loadSuccess,
    required TResult Function(String message) loadFailure,
  }) {
    return loadSuccess(travelData, trips, endSearch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(TravelEntityResponse? travelData, List<Trip>? trips,
            bool endSearch)?
        loadSuccess,
    TResult? Function(String message)? loadFailure,
  }) {
    return loadSuccess?.call(travelData, trips, endSearch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(TravelEntityResponse? travelData, List<Trip>? trips,
            bool endSearch)?
        loadSuccess,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(travelData, trips, endSearch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements TravelDataState {
  factory _LoadSuccess(
      {TravelEntityResponse? travelData,
      List<Trip>? trips,
      bool endSearch}) = _$LoadSuccessImpl;

  TravelEntityResponse? get travelData;
  set travelData(TravelEntityResponse? value);
  List<Trip>? get trips;
  set trips(List<Trip>? value);
  bool get endSearch;
  set endSearch(bool value);

  /// Create a copy of TravelDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$TravelDataStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of TravelDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadFailureImpl implements _LoadFailure {
  _$LoadFailureImpl(this.message);

  @override
  String message;

  @override
  String toString() {
    return 'TravelDataState.loadFailure(message: $message)';
  }

  /// Create a copy of TravelDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            TravelEntityResponse? travelData, List<Trip>? trips, bool endSearch)
        loadSuccess,
    required TResult Function(String message) loadFailure,
  }) {
    return loadFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(TravelEntityResponse? travelData, List<Trip>? trips,
            bool endSearch)?
        loadSuccess,
    TResult? Function(String message)? loadFailure,
  }) {
    return loadFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(TravelEntityResponse? travelData, List<Trip>? trips,
            bool endSearch)?
        loadSuccess,
    TResult Function(String message)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements TravelDataState {
  factory _LoadFailure(String message) = _$LoadFailureImpl;

  String get message;
  set message(String value);

  /// Create a copy of TravelDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
