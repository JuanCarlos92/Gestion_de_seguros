import 'package:biencubierto/main.dart';
import 'package:biencubierto/src/core/config/app_env.dart';

// Punto de entrada para el entorno de desarrollo
// Inicializa la aplicación usando la configuración de desarrollo
Future<void> main() async => mainCommon(AppEnviroment.dev);
