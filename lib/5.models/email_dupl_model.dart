import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_dupl_model.freezed.dart';

part 'email_dupl_model.g.dart';

@freezed
abstract class EmailDuplicationModel with _$EmailDuplicationModel {
  const factory EmailDuplicationModel({
    required bool isDuplicated,
  }) = _EmailDuplicationModel;

  factory EmailDuplicationModel.fromJson(Map<String, dynamic> json) => _$EmailDuplicationModelFromJson(json);
}
