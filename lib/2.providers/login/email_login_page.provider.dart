import 'package:maygrowself/utils/reg_rep_util.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'email_login_page.provider.g.dart';

@riverpod
class Login extends _$Login {
  String? _emailString;
  String? _passwordString;

  @override
  List<String?> build() {
    return List.generate(2, (_) => null);
  }

  void checkEmailRegExp(String email) {
    String? content;
    _emailString = email;
    if (email.isNotEmpty && !RegExpUtil.isValidEmail(email)) {
      content = '이메일 형식이 올바르지 않습니다.';
    } else {
      content = '';
    }
    state = [...state]
      ..removeAt(0)
      ..insert(0, content);
  }

  void checkPasswordRegExp(String passwordString) {
    String? content;
    _passwordString = passwordString;
    if (passwordString.isNotEmpty && !RegExpUtil.isValidPassword(passwordString)) {
      content = '패스워드 형식에 맞지 않아요.';
    } else {
      content = '';
    }
    state = [...state]
      ..removeAt(1)
      ..insert(1, content);
  }

  bool isALlPassed() {
    bool result = false;
    if (state.every((element) => element != null && element.isEmpty)) {
      result = true;
    }

    if ((_emailString != null && _emailString!.isEmpty) || (_passwordString != null && _passwordString!.isEmpty)) {
      result = false;
    }

    return result;
  }
}
