import 'package:maygrowself/2.providers/dio_/rest_client_provider.dart';
import 'package:maygrowself/5.models/email_dupl_model.dart';
import 'package:maygrowself/5.models/response_entity.dart';
import 'package:maygrowself/utils/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'email_duplication_repository.g.dart';

@riverpod
Future<ResponseEntity> emailDuplicationRepository(EmailDuplicationRepositoryRef ref, String email) async {
  try {
    return await ref.watch(restApiProvider).getEmailDuplication(email);
  } catch (e) {
    rethrow;
  }
}
