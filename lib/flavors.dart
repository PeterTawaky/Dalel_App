abstract class AppConfig {
  // static const String flavor = String.fromEnvironment('FLAVOR');
  // static bool get isDevelopment => flavor == 'dev';
  // static bool get isProduction => flavor == 'prod';
}

class DevConfig extends AppConfig {}

class ProdConfig extends AppConfig {}
