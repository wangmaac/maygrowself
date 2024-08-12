enum AppPath {
  home,
  login,
  signup,
  passwordReset,
  useTerm,
  personalTerm,
  main,
}

extension AppPathExtension on AppPath {
  String get toPath {
    switch (this) {
      case AppPath.home:
        return '/home';
      case AppPath.main:
        return '/main';
      case AppPath.login:
        return '/login';
      case AppPath.signup:
        return '/signup';
      case AppPath.passwordReset:
        return '/passwordReset';
      case AppPath.useTerm:
        return 'useTerm';
      case AppPath.personalTerm:
        return 'personalTerm';
    }
  }
}

extension AppNameExtension on AppPath {
  String get toName {
    switch (this) {
      case AppPath.home:
        return 'home';
      case AppPath.main:
        return 'main';
      case AppPath.login:
        return 'login';
      case AppPath.signup:
        return 'signup';
      case AppPath.passwordReset:
        return 'passwordReset';
      case AppPath.useTerm:
        return 'useTerm';
      case AppPath.personalTerm:
        return 'personalTerm';
    }
  }

  String get toInnerPath {
    switch (this) {
      case AppPath.useTerm:
        return '/signup/useTerm';
      case AppPath.personalTerm:
        return '/signup/personalTerm';
      default:
        return '/login';
    }
  }
}
