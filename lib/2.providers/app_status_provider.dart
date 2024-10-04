import 'package:maygrowself/2.providers/login/token.future.dart';
import 'package:maygrowself/2.providers/secure_storage.dart';
import 'package:maygrowself/5.models/app_status_model.dart';
import 'package:maygrowself/5.models/sign_up_request.dart';
import 'package:maygrowself/5.models/user_model.dart';
import 'package:maygrowself/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'user/user_info_provider.future.dart';

part 'app_status_provider.g.dart';

@Riverpod(keepAlive: true)
class AppStatus extends _$AppStatus {
  @override
  Future<AppStatusModel> build() async {
    return Future.value(AppStatusModel.empty());
  }

  //app login 상태를 관리
   Future<void> setAppStatus({SignUpRequest? signUpRequest}) async {
    UserModel? userModel;
    String? accessToken = await ref.read(secureStorageProvider).read(key: ACCESS_TOKEN_KEY);

    if (signUpRequest != null) {
      await ref.read(tokenProvider(signUpRequest).future);
      userModel = await ref.read(getUserModelFromStoreAccessTokenProvider.future);
    } else {
      if (accessToken == null) {
        userModel = null;
      }else{
        userModel = await ref.read(getUserModelFromStoreAccessTokenProvider.future);
      }
    }
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async => AppStatusModel(loggedInUser: userModel));
  }

  Future<void> logout() async {
    AppStatusModel newModel = AppStatusModel(loggedInUser: null);
    ref.read(secureStorageProvider).deleteAll();
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return newModel;
    });
  }
}
