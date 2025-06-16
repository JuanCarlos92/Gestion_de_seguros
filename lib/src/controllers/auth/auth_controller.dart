import '../../core/utils/exports.dart';
part 'auth_controller.g.dart';

// Controlador para manejar la autenticación usando Riverpod
@riverpod
class AuthController extends _$AuthController {
  // Variables para almacenar las credenciales del usuario
  late String _username;
  late String _password;

  // Estado inicial del controlador de login
  @override
  LoginState build() {
    return LoginState.inital();
  }

  // Método para realizar el proceso de login
  Future<void> login() async {
    // Actualiza el estado a 'cargando'
    state = LoginState.loading();

    // Crea el objeto con los parámetros de login
    Login login = Login(username: _username, password: _password);

    // Realiza la petición de login y espera la respuesta
    final response = await ref.read(authServicesProvider).login(login);

    // Actualiza el estado según la respuesta:
    // Si hay error -> Estado de error con el mensaje
    // Si hay éxito -> Estado de éxito
    state = response.fold(
        (failure) => LoginState.error(failure), (_) => LoginState.success());

    if (response.isRight()) {
      final loginData = LoginResponse.fromJson(response.getOrElse(() => {}));
      ref.read(productsProvider.notifier).state = loginData.client.products;
    }
  }

  // Método para actualizar el nombre de usuario
  setUsername(String value) {
    _username = value;
  }

  // Método para actualizar la contraseña
  setPassword(String value) {
    _password = value;
  }
}
