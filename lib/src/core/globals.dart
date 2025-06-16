import '../core/utils/exports.dart';

// Variable global que indica si la aplicación está ejecutándose en modo prueba
// Se determina verificando si existe la variable de entorno 'FLUTTER_TEST'
final kTestMode = Platform.environment.containsKey('FLUTTER_TEST');
