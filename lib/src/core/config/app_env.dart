import '../utils/constants.dart' as constant;

// Enumeración que define los entornos disponibles de la aplicación
enum AppEnviroment { dev, prod }

// Clase abstracta que maneja la configuración del entorno de la aplicación
abstract class EnvInfo {
  // Variable estática que almacena el entorno actual, por defecto es desarrollo
  static AppEnviroment _enviroment = AppEnviroment.dev;

  // Método para inicializar el entorno de la aplicación
  static void initialize(AppEnviroment enviroment) {
    EnvInfo._enviroment = enviroment;
  }

  // Getters para obtener información del entorno actual
  static String get appName => _enviroment._appTitle; // Nombre de la aplicación
  static String get envName => _enviroment._envName; // Nombre del entorno
  static String get connectionsString =>
      _enviroment._connectionString; // URL base de la API
  static AppEnviroment get enviroment => _enviroment; // Entorno actual
  static bool get isProduccion =>
      _enviroment == AppEnviroment.prod; // Indica si es producción
}

// Extensión privada que define las propiedades específicas para cada entorno
extension _EnvProperties on AppEnviroment {
  // Títulos de la aplicación según el entorno
  static const _appTitles = {
    AppEnviroment.dev: 'Prueba dev',
    AppEnviroment.prod: 'Prueba prod'
  };

  // URLs base según el entorno
  static const _connectionStrings = {
    AppEnviroment.dev: constant.kBaseUrl,
    AppEnviroment.prod: constant.kBaseUrl,
  };

  // Nombres de los entornos
  static const _envs = {AppEnviroment.dev: 'dev', AppEnviroment.prod: 'prod'};

  // Getters privados para acceder a las propiedades específicas del entorno
  String get _appTitle => _appTitles[this]!;
  String get _envName => _envs[this]!;
  String get _connectionString => _connectionStrings[this]!;
}
