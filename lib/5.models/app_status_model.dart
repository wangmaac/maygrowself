import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_model.dart';

part 'app_status_model.freezed.dart';

part 'app_status_model.g.dart';

@freezed
abstract class AppStatusModel with _$AppStatusModel {
  const AppStatusModel._();

  const factory AppStatusModel({
    required UserModel? loggedInUser,
  }) = _AppStatusModel;

  factory AppStatusModel.fromJson(Map<String, dynamic> json) => _$AppStatusModelFromJson(json);

  factory AppStatusModel.empty() {
    return AppStatusModel(
      loggedInUser: null,
    );
  }
}
