// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStatusModelImpl _$$AppStatusModelImplFromJson(Map<String, dynamic> json) =>
    _$AppStatusModelImpl(
      loggedInUser: json['loggedInUser'] == null
          ? null
          : UserModel.fromJson(json['loggedInUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppStatusModelImplToJson(
        _$AppStatusModelImpl instance) =>
    <String, dynamic>{
      'loggedInUser': instance.loggedInUser,
    };
