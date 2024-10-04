// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppStatusModel _$AppStatusModelFromJson(Map<String, dynamic> json) {
  return _AppStatusModel.fromJson(json);
}

/// @nodoc
mixin _$AppStatusModel {
  UserModel? get loggedInUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStatusModelCopyWith<AppStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStatusModelCopyWith<$Res> {
  factory $AppStatusModelCopyWith(
          AppStatusModel value, $Res Function(AppStatusModel) then) =
      _$AppStatusModelCopyWithImpl<$Res, AppStatusModel>;
  @useResult
  $Res call({UserModel? loggedInUser});

  $UserModelCopyWith<$Res>? get loggedInUser;
}

/// @nodoc
class _$AppStatusModelCopyWithImpl<$Res, $Val extends AppStatusModel>
    implements $AppStatusModelCopyWith<$Res> {
  _$AppStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedInUser = freezed,
  }) {
    return _then(_value.copyWith(
      loggedInUser: freezed == loggedInUser
          ? _value.loggedInUser
          : loggedInUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get loggedInUser {
    if (_value.loggedInUser == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.loggedInUser!, (value) {
      return _then(_value.copyWith(loggedInUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStatusModelImplCopyWith<$Res>
    implements $AppStatusModelCopyWith<$Res> {
  factory _$$AppStatusModelImplCopyWith(_$AppStatusModelImpl value,
          $Res Function(_$AppStatusModelImpl) then) =
      __$$AppStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel? loggedInUser});

  @override
  $UserModelCopyWith<$Res>? get loggedInUser;
}

/// @nodoc
class __$$AppStatusModelImplCopyWithImpl<$Res>
    extends _$AppStatusModelCopyWithImpl<$Res, _$AppStatusModelImpl>
    implements _$$AppStatusModelImplCopyWith<$Res> {
  __$$AppStatusModelImplCopyWithImpl(
      _$AppStatusModelImpl _value, $Res Function(_$AppStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedInUser = freezed,
  }) {
    return _then(_$AppStatusModelImpl(
      loggedInUser: freezed == loggedInUser
          ? _value.loggedInUser
          : loggedInUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStatusModelImpl extends _AppStatusModel
    with DiagnosticableTreeMixin {
  const _$AppStatusModelImpl({required this.loggedInUser}) : super._();

  factory _$AppStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStatusModelImplFromJson(json);

  @override
  final UserModel? loggedInUser;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppStatusModel(loggedInUser: $loggedInUser)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppStatusModel'))
      ..add(DiagnosticsProperty('loggedInUser', loggedInUser));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStatusModelImpl &&
            (identical(other.loggedInUser, loggedInUser) ||
                other.loggedInUser == loggedInUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, loggedInUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStatusModelImplCopyWith<_$AppStatusModelImpl> get copyWith =>
      __$$AppStatusModelImplCopyWithImpl<_$AppStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStatusModelImplToJson(
      this,
    );
  }
}

abstract class _AppStatusModel extends AppStatusModel {
  const factory _AppStatusModel({required final UserModel? loggedInUser}) =
      _$AppStatusModelImpl;
  const _AppStatusModel._() : super._();

  factory _AppStatusModel.fromJson(Map<String, dynamic> json) =
      _$AppStatusModelImpl.fromJson;

  @override
  UserModel? get loggedInUser;
  @override
  @JsonKey(ignore: true)
  _$$AppStatusModelImplCopyWith<_$AppStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
