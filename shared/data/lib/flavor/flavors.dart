enum Flavor {
  prod,
  staging,
  dev;

  bool get isDev => this == Flavor.dev;
  bool get isStaging => this == Flavor.staging;
  bool get isProd => this == Flavor.prod;
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'Guten Book';
      case Flavor.staging:
        return 'Guten Book Staging';
      case Flavor.dev:
        return 'Guten Book Dev';
    }
  }
}
