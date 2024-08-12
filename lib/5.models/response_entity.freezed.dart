// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseEntity<T> _$ResponseEntityFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ResponseEntity<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ResponseEntity<T> {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseEntityCopyWith<T, ResponseEntity<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseEntityCopyWith<T, $Res> {
  factory $ResponseEntityCopyWith(
          ResponseEntity<T> value, $Res Function(ResponseEntity<T>) then) =
      _$ResponseEntityCopyWithImpl<T, $Res, ResponseEntity<T>>;
  @useResult
  $Res call({int code, String message, T data, DateTime timestamp});
}

/// @nodoc
class _$ResponseEntityCopyWithImpl<T, $Res, $Val extends ResponseEntity<T>>
    implements $ResponseEntityCopyWith<T, $Res> {
  _$ResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseEntityImplCopyWith<T, $Res>
    implements $ResponseEntityCopyWith<T, $Res> {
  factory _$$ResponseEntityImplCopyWith(_$ResponseEntityImpl<T> value,
          $Res Function(_$ResponseEntityImpl<T>) then) =
      __$$ResponseEntityImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int code, String message, T data, DateTime timestamp});
}

/// @nodoc
class __$$ResponseEntityImplCopyWithImpl<T, $Res>
    extends _$ResponseEntityCopyWithImpl<T, $Res, _$ResponseEntityImpl<T>>
    implements _$$ResponseEntityImplCopyWith<T, $Res> {
  __$$ResponseEntityImplCopyWithImpl(_$ResponseEntityImpl<T> _value,
      $Res Function(_$ResponseEntityImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
    Object? timestamp = null,
  }) {
    return _then(_$ResponseEntityImpl<T>(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ResponseEntityImpl<T>
    with DiagnosticableTreeMixin
    implements _ResponseEntity<T> {
  const _$ResponseEntityImpl(
      {required this.code,
      required this.message,
      required this.data,
      required this.timestamp});

  factory _$ResponseEntityImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ResponseEntityImplFromJson(json, fromJsonT);

  @override
  final int code;
  @override
  final String message;
  @override
  final T data;
  @override
  final DateTime timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseEntity<$T>(code: $code, message: $message, data: $data, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseEntity<$T>'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseEntityImpl<T> &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message,
      const DeepCollectionEquality().hash(data), timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseEntityImplCopyWith<T, _$ResponseEntityImpl<T>> get copyWith =>
      __$$ResponseEntityImplCopyWithImpl<T, _$ResponseEntityImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ResponseEntityImplToJson<T>(this, toJsonT);
  }
}

abstract class _ResponseEntity<T> implements ResponseEntity<T> {
  const factory _ResponseEntity(
      {required final int code,
      required final String message,
      required final T data,
      required final DateTime timestamp}) = _$ResponseEntityImpl<T>;

  factory _ResponseEntity.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ResponseEntityImpl<T>.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  T get data;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$ResponseEntityImplCopyWith<T, _$ResponseEntityImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
