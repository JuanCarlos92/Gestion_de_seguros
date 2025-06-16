import 'package:flutter/services.dart';
import 'package:biencubierto/src/core/utils/exports.dart';
import 'package:biencubierto/src/pages/main/app.dart';
import 'package:biencubierto/src/pages/main/observers.dart';

void main() => mainCommon(AppEnviroment.prod);

// Función común de inicialización que comparten todos los entornos
Future<void> mainCommon(AppEnviroment enviroment) async {
  // Asegura que Flutter esté inicializado
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa la configuración del entorno
  EnvInfo.initialize(enviroment);
  // Configura el estilo de la barra de estado
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black,
      statusBarBrightness: Brightness.light,
    ),
  );
  // Inicia la aplicación con Riverpod y los observadores
  runApp(ProviderScope(observers: [
    Observers(),
  ], child: const MyApp()));
}
