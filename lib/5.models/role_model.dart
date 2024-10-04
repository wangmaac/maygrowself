import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_model.freezed.dart';

part 'role_model.g.dart';

enum UserCode {
  @JsonValue('MEMBER')
  MEMBER,
  @JsonValue('ADMIN')
  ADMIN,
}

@freezed
abstract class RoleModel with _$RoleModel {
  const factory RoleModel({
    required UserCode code,
    required String name,
  }) = _RoleModel;

  factory RoleModel.fromJson(Map<String, dynamic> json) => _$RoleModelFromJson(json);
}
