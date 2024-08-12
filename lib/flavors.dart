enum Flavor {
  dev,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return '5월의자성';
      case Flavor.prod:
        return '오월의자성';
      default:
        return 'title';
    }
  }

  static String get endPoint {
    switch (appFlavor) {
      case Flavor.dev:
        return 'http://15.165.249.34:8602/v1';
      case Flavor.prod:
        return 'http://15.165.249.34:8602/v1';
      default:
        return 'http://15.165.249.34:8602/v1';
    }
  }
}
