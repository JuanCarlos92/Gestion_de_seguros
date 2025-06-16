import '../../core/utils/exports.dart';

// Clase de utilidad para manejar errores
class ErrorUtils {
  // Método estático para manejar errores genéricos en la aplicación
  static void handleGenericError(BuildContext context, Failure error) {
    // Si el código de estado es 401 (No autorizado)
    if (error.statusCode == 401) {
      // Redirige al usuario a la página de login
      context.go('/login');
    } else {
      // Para otros errores, muestra un mensaje en consola
      debugPrint('Estamos aquí');
      // Y muestra una notificación al usuario con el mensaje de error
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(error.message)));
    }
  }
}
