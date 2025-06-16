import '../../core/utils/exports.dart';
import '../../models/request/change_password.dart';
import '../../pages/register/change_password/provider/injection/change_password_service_injection.dart';
import '../../pages/register/change_password/provider/state/change_password_state.dart';
part 'change_password_controller.g.dart';

@riverpod
class ChangePasswordController extends _$ChangePasswordController {
  // Variables para almacenar las credenciales del usuario
  String _username = '';
  String _oneUsePassword = '';
  String _password = '';
  String _password2 = '';

  // Estado inicial del controlador de register
  @override
  ChangePasswordState build() {
    return ChangePasswordState.inital();
  }

  // Getter para obtener el username (email)
  String get username => _username;

  // Método para realizar el proceso de register
  Future<void> register() async {
    // Actualiza el estado a 'cargando'
    state = ChangePasswordState.loading();

    // Crea el objeto con los parámetros de register
    ChangePassword changePassword = ChangePassword(
      username: _username,
      oneUsePassword: _oneUsePassword,
      password: _password,
      password2: _password2,
    );

    // Realiza la petición de register y espera la respuesta
    final response = await ref
        .read(changePasswordServiceProvider)
        .changePassword(changePassword);

    // Actualiza el estado según la respuesta
    state = response.fold((failure) => ChangePasswordState.error(failure),
        (_) => ChangePasswordState.success());
  }

  // Método para actualizar el username (email)
  void setUsername(String value) {
    _username = value;
  }

  // Método para actualizar el código
  void setCode(String value) {
    _oneUsePassword = value;
  }

  // Método para actualizar la contraseña
  void setPassword(String value) {
    _password = value;
  }

  // Método para actualizar la confirmación de contraseña
  void setPassword2(String value) {
    _password2 = value;
  }
}
