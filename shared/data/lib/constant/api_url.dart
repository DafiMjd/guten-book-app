import '../flavor/index.dart';

class ApiUrl {
  static String get baseUrl => switch (F.appFlavor) {
    Flavor.prod => 'https://gutendex.com',
    Flavor.staging => 'https://gutendex.com',
    Flavor.dev => 'https://gutendex.com',
  };
}
