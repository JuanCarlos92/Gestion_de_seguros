// ignore_for_file: avoid_print

import '../../core/utils/exports.dart';
part 'register_controller.g.dart';

// Controlador para manejar el register usando Riverpod
@riverpod
class RegisterController extends _$RegisterController {
  // Variables para almacenar las credenciales del usuario
  String _name = '';
  String _lastname = '';
  final String _birthday = '';
  String _phone = '';
  String _phonePrefix = '';
  String _email = '';

  // Getter email
  String get email => _email;

  // Estado inicial del controlador de register
  @override
  RegisterState build() {
    return RegisterState.inital();
  }

  // Método para realizar el proceso de register
  Future<void> register() async {
    // Actualiza el estado a 'cargando'
    state = RegisterState.loading();

    // Crea el objeto con los parámetros de register
    Register register = Register(
      name: _name,
      lastName: _lastname,
      birthday: _birthday,
      phone: _phone,
      phonePrefix: _phonePrefix,
      email: _email,
    );

    // Realiza la petición de register y espera la respuesta
    final response =
        await ref.read(registerServicesProvider).register(register);

    // Actualiza el estado según la respuesta:
    // Si hay error -> Estado de error con el mensaje
    // Si hay éxito -> Estado de éxito
    state = response.fold((failure) => RegisterState.error(failure),
        (_) => RegisterState.success());
  }

  // Método para actualizar el nombre de usuario
  setName(String value) {
    _name = value;
  }

  // Método para actualizar la el apellido
  setLastname(String value) {
    _lastname = value;
  }

  // Método para actualizar la fecha de nacimiento
  setBirthday(String value) {
    _lastname = value;
  }

  // Método para actualizar el telefono
  setPhone(String value) {
    _phone = value;
  }

  // Método para actualizar el prefijo del telefono
  setPhonePrefix(String value) {
    _phonePrefix = value;
  }

  // Método para actualizar el correo
  setEmail(String value) {
    _email = value;
    print('Email actualizado en controller: $_email');
  }
}
