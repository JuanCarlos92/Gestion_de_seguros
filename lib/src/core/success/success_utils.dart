import '../../core/utils/exports.dart';

// Clase de utilidad para manejar mensajes de éxito
class SuccessUtils {
  // registro
  static void manejarChangePassword(BuildContext context, String email) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Se ha enviado un email con una contraseña temporal'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 4),
      ),
    );
    // Redirige al usuario a registro con clave
    context.go('/changePassword', extra: email);
  }

  // cambiar clave
  static void manejarExitoRegistroCode(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Registro Completado'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 4),
      ),
    );
    // Redirige al usuario al login
    context.go('/login');
  }

  // registro
  static void manejarChangePwdPerfil(BuildContext context, String email) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Se ha enviado un email con una contraseña temporal'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 4),
      ),
    );
    // Redirige al usuario a registro con clave
    context.go('/changePwdPerfil', extra: email);
  }

  // cambiar clave editar perfil
  static void manejarCambiarPwdCode(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Se ha cambiado la contraseña'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 4),
      ),
    );
    // Redirige al usuario al perfil
    context.go('/profile');
  }

  // login
  static void manejarExitoLogin(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Inicio de sesión exitoso'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 4),
      ),
    );
    // Redirige al usuario a la página principal
    context.go('/home');
  }

  // creación de productos
  static void manejarExitoProducto(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Producto creado exitosamente'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 2),
      ),
    );
    // Redirige al usuario a la página principal
    context.go('/home');
  }
}
