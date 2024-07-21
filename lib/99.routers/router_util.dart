enum AppPath {
  home,
  login,
  signup,
}

extension AppPathExtension on AppPath {
  String get toPath {
    switch (this) {
      case AppPath.home:
        return '/home';
      case AppPath.login:
        return '/login';
      case AppPath.signup:
        return '/signup';
    }
  }
}

extension AppNameExtension on AppPath {
  String get toName {
    switch (this) {
      case AppPath.home:
        return 'home';
      case AppPath.login:
        return 'login';
      case AppPath.signup:
        return 'signup';
    }
  }
}
