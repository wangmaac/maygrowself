import 'package:dio/dio.dart';
import 'package:maygrowself/2.providers/sign_up/email_duplication_provider.future.dart';
import 'package:maygrowself/5.models/response_entity.dart';
import 'package:maygrowself/utils/logger.dart';
import 'package:maygrowself/utils/reg_rep_util.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_page_provider.g.dart';

enum CheckBoxType {
  useTerm('이용약관 동의'),
  personalTerm('개인정보처리 이용안내 동의');

  final String title;

  const CheckBoxType(this.title);
}

enum SignUpValidationState {
  duplication('중복'),
  complete('완료');

  final String title;

  const SignUpValidationState(this.title);
}

@riverpod
class SignUpValidation extends _$SignUpValidation {
  SignUpValidationState _val = SignUpValidationState.duplication;

  SignUpValidationState get valTitle => _val; // String get validateButton => _validateButton;

  List<bool> _checkBoxList = List.generate(2, (_) => false);

  List<bool> get checkBoxList => _checkBoxList;

  void get update => state = [...state];

  String? passwordString;
  String? passwordConfirmString;

  String? passwordErrorString;
  String? passwordConfirmErrorString;

  void toggleCheckBox(int index) {
    _checkBoxList[index] = !_checkBoxList[index];
    update;
  }

  @override
  List<String?> build() {
    return List.generate(3, (_) => null);
  }

  void checkEmailRegExp(String email) {
    _val = SignUpValidationState.duplication;
    String? content;
    if (email.isNotEmpty && !RegExpUtil.isValidEmail(email)) {
      content = '이메일 형식이 올바르지 않습니다.';
    } else {
      content = '';
    }
    state = [...state]
      ..removeAt(0)
      ..insert(0, content);
  }

  void allPasswordCheck(String passwordString, String passwordConfirmString) {
    passwordErrorString = _checkPasswordRegExp(passwordString);
    passwordConfirmString = _checkPasswordConfirmRegExp(passwordConfirmString);
    state = [...state]
      ..removeAt(1)
      ..insert(1, passwordErrorString)
      ..removeAt(2)
      ..insert(2, passwordConfirmString);
  }

  String _checkPasswordRegExp(String passwordString) {
    String? content;
    this.passwordString = passwordString;
    if (passwordString.isNotEmpty && !RegExpUtil.isValidPassword(passwordString)) {
      content = '패스워드 형식에 맞지 않아요.';
    } else {
      content = '';
    }
    return content;
  }

  String _checkPasswordConfirmRegExp(String passwordConfirmString) {
    String? content;
    this.passwordConfirmString = passwordConfirmString;
    if (passwordConfirmString.isNotEmpty && passwordConfirmString != passwordString) {
      content = '패스워드가 같지 않아요.';
    } else {
      content = '';
    }
    return content;
  }

  Future<void> duplicationButtonClick(String email) async {
    if (email.isEmpty || _val == SignUpValidationState.complete) {
      return;
    }
    try {
      final emailDuplicationModel = await ref.watch(emailDuplicationProvider(email).future);
      if (emailDuplicationModel.isDuplicated) {
        state = [...state]
          ..removeAt(0)
          ..insert(0, '가입된 이메일입니다.');
      } else {
        _val = SignUpValidationState.complete;
        // _validateButton = '완료';
        state = [...state]
          ..removeAt(0)
          ..insert(0, '');
      }
    } on DioException catch (e) {
      ResponseEntity content = e.response!.data;
      state = [...state]
        ..removeAt(0)
        ..insert(0, content.data['email']['isEmail'].toString());
    } catch (e) {
      logger.e(e);
      throw e;
    }
  }

  bool isEmptyPasswordString() {
    return passwordString == null || passwordString!.isEmpty || passwordConfirmString == null || passwordConfirmString!.isEmpty;
  }

  bool isAllPassed() {
    bool result = state.every((element) => element != null && element == '');
    if (result) {
      result = _checkBoxList.every((element) => element);
    }
    if (_val == SignUpValidationState.duplication) {
      result = false;
    }
    if (isEmptyPasswordString()) {
      result = false;
    }
    return result;
  }
}
