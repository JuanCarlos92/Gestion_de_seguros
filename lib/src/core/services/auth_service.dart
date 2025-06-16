import 'package:dartz/dartz.dart';
import '../utils/exports.dart';

// Servicio encargado de manejar la autenticación de usuarios
class AuthServices {
  // Instancia del servicio de red para realizar peticiones HTTP
  final NetworkService networkService;

  // Constructor que requiere una instancia de NetworkService
  AuthServices({required this.networkService});

  // Método para realizar el inicio de sesión
  // Retorna un ResultVoid (Either<Failure, void>) que indica éxito o fracaso
  Future<Either<Failure, Map<String, dynamic>>> login(Login login) async {
    const String endpoint = '/api/v1/auth/login';

    // Realiza la petición POST al servidor con los datos de login
    final response = await networkService.post(endpoint, data: login.toJson());

    // Maneja la respuesta:
    // - Si hay error (e), retorna un Left con el error
    // - Si hay éxito (_), retorna un Right con null
    return response.fold((e) => Left(APIFailure.fromException(e)),
        (data) => Right(data.data as Map<String, dynamic>));
  }
}
