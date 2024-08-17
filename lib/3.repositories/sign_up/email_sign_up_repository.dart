import 'package:maygrowself/2.providers/dio_/rest_client_provider.dart';
import 'package:maygrowself/5.models/response_entity.dart';
import 'package:maygrowself/5.models/sign_up_request.dart';
import 'package:maygrowself/utils/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'email_sign_up_repository.g.dart';

@riverpod
Future<ResponseEntity> emailSignUpRepository(EmailSignUpRepositoryRef ref, SignUpRequest request) async {
  try {
    return await ref.watch(restApiProvider).signUp(request);
  } catch (e) {
    logger.e(e);
    rethrow;
  }
}
