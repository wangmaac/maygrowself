// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseEntityImpl<T> _$$ResponseEntityImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ResponseEntityImpl<T>(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: fromJsonT(json['data']),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$ResponseEntityImplToJson<T>(
  _$ResponseEntityImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': toJsonT(instance.data),
      'timestamp': instance.timestamp.toIso8601String(),
    };
