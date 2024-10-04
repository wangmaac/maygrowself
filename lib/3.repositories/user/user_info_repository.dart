import 'package:maygrowself/2.providers/dio_/rest_client_provider.dart';
import 'package:maygrowself/5.models/response_entity.dart';
import 'package:maygrowself/5.models/user_model.dart';
import 'package:maygrowself/utils/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_info_repository.g.dart';

@riverpod
Future<ResponseEntity<UserModel>> userModel(UserModelRef ref) async {
  try {
    return await ref.watch(restApiProvider).getMe();
  } catch (e) {
    logger.e(e);
    rethrow;
  }
}
