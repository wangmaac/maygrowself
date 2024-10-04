import 'package:maygrowself/3.repositories/sign_up/email_sign_up_repository.dart';
import 'package:maygrowself/5.models/sign_up_request.dart';
import 'package:maygrowself/utils/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'email_signup_provider.future.g.dart';

@riverpod
Future<bool> signUp(SignUpRef ref, SignUpRequest request) async {
    try {
        final result = await ref.read(emailSignUpRepositoryProvider(request).future);
        if (result.code == 200) {
            return true;
        } else {
            return false;
        }
    } catch (e) {
        logger.e(e);
        rethrow;
    }
}
