import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_entity.freezed.dart';

part 'response_entity.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class ResponseEntity<T> with _$ResponseEntity<T> {
  const factory ResponseEntity({
    required int code,
    required String message,
    required T data,
    required DateTime timestamp,
  }) = _ResponseEntity<T>;

  factory ResponseEntity.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ResponseEntityFromJson(json, fromJsonT);
}