import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_response_model.freezed.dart';

part 'token_response_model.g.dart';

@freezed
abstract class TokenResponseModel with _$TokenResponseModel {
  const factory TokenResponseModel({
    required String accessToken,
    required String refreshToken,
  }) = _TokenResponseModel;

  factory TokenResponseModel.fromJson(Map<String, dynamic> json) => _$TokenResponseModelFromJson(json);
}
