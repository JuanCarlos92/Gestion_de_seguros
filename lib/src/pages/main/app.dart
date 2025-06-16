import '../../core/utils/exports.dart';
import '../../../generated/l10n.dart';

// Widget principal de la aplicación que usa Riverpod para gestión de estado
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      // Título de la aplicación
      title: 'Biencubierto',
      // Configuración del enrutador
      routerConfig: router,
      // Delegados para la internacionalización
      localizationsDelegates: const [
        S.delegate, // Traducciones personalizadas
        GlobalMaterialLocalizations.delegate, // Traducciones Material Design
        GlobalWidgetsLocalizations.delegate, // Traducciones widgets básicos
        GlobalCupertinoLocalizations.delegate, // Traducciones estilo iOS
      ],
      // Idiomas soportados por la aplicación
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
