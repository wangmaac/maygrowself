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

}
