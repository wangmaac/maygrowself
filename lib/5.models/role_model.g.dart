// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoleModelImpl _$$RoleModelImplFromJson(Map<String, dynamic> json) =>
    _$RoleModelImpl(
      code: $enumDecode(_$UserCodeEnumMap, json['code']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$RoleModelImplToJson(_$RoleModelImpl instance) =>
    <String, dynamic>{
      'code': _$UserCodeEnumMap[instance.code]!,
      'name': instance.name,
    };

const _$UserCodeEnumMap = {
  UserCode.MEMBER: 'MEMBER',
  UserCode.ADMIN: 'ADMIN',
};
