// ignore_for_file: avoid_print

import '../../core/utils/exports.dart';
import '../../models/request/reset_password.dart';
import '../../pages/reset_password/provider/injection/reset_password_service_injection.dart';
import '../../pages/reset_password/provider/state/reset_password_state.dart';
part 'reset_password_controller.g.dart';

// Controlador para manejar el reset password usando Riverpod
@riverpod
class ResetPasswordController extends _$ResetPasswordController {
  // Variable para almacenar el correo del usuario
  String _username = '';

  // Getter username
  String get username => _username;

  // Estado inicial del controlador de reset password
  @override
  ResetPasswordState build() {
    return ResetPasswordState.inital();
  }

  // Método para realizar el proceso de reset password
  Future<void> resetPassword() async {
    // Actualiza el estado a 'cargando'
    state = ResetPasswordState.loading();

    // Crea el objeto con los parámetros de reset password
    ResetPassword resetPassword = ResetPassword(
      username: _username,
    );

    // Realiza la petición de reset password y espera la respuesta
    final response = await ref
        .read(resetPasswordServiceProvider)
        .resetPassword(resetPassword);

    // Actualiza el estado según la respuesta:
    // Si hay error -> Estado de error con el mensaje
    // Si hay éxito -> Estado de éxito
    state = response.fold(
      (failure) => ResetPasswordState.error(failure),
      (_) => ResetPasswordState.success(),
    );
  }

  // Método para actualizar el username (correo)
  setUsername(String value) {
    _username = value;
    print('Username actualizado en controller: $_username');
  }
}
