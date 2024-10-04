import 'package:maygrowself/3.repositories/user/user_info_repository.dart';
import 'package:maygrowself/5.models/response_entity.dart';
import 'package:maygrowself/5.models/user_model.dart';
import 'package:maygrowself/utils/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_info_provider.future.g.dart';

@riverpod
Future<UserModel> getUserModelFromStoreAccessToken(GetUserModelFromStoreAccessTokenRef ref) async {
  try {
    ResponseEntity responseEntity = await ref.watch(userModelProvider.future);
    UserModel model = responseEntity.data as UserModel;
    return model;
  } catch (e) {
    logger.e(e);
    rethrow;
  }
}
