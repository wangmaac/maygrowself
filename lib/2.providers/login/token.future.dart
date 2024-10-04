import 'package:maygrowself/2.providers/secure_storage.dart';
import 'package:maygrowself/3.repositories/login/email_login_repository.dart';
import 'package:maygrowself/5.models/response_entity.dart';
import 'package:maygrowself/5.models/sign_up_request.dart';
import 'package:maygrowself/5.models/token_response_model.dart';
import 'package:maygrowself/utils/constants.dart';
import 'package:maygrowself/utils/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token.future.g.dart';

@riverpod
Future<void> token(TokenRef ref, SignUpRequest request) async {
  try {
    final storage = ref.watch(secureStorageProvider);
    final responseEntity = await ref.watch(loginTokenRepoProvider(request).future);
    final response = responseEntity as ResponseEntity;
    TokenResponseModel model =  response.data as TokenResponseModel;
    await storage.write(key: ACCESS_TOKEN_KEY, value: model.accessToken);
    await storage.write(key: REFRESH_TOKEN_KEY, value: model.refreshToken);
  } catch (e) {
    logger.e(e);
    rethrow;
  }
}
