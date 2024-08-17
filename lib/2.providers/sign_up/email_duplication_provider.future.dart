import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:maygrowself/3.repositories/sign_up/email_duplication_repository.dart';
import 'package:maygrowself/5.models/email_dupl_model.dart';
import 'package:maygrowself/utils/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'email_duplication_provider.future.g.dart';

@riverpod
Future<EmailDuplicationModel> emailDuplication(EmailDuplicationRef ref, String email) async {
  try {
    final responseEntity = await ref.watch(emailDuplicationRepositoryProvider(email).future);
    EmailDuplicationModel emailDuplicationModel = responseEntity.data;
    return emailDuplicationModel;
  } catch (e) {
    logger.e(e);
    rethrow;
  }
}
