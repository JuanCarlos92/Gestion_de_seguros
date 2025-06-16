import 'package:dartz/dartz.dart';
import '../utils/exports.dart';
import 'dart:developer' as developer;

class RegisterServices {
  final NetworkService networkService;
  final String token;

  RegisterServices({
    required this.networkService,
    required this.token,
  });

  Future<Either<Failure, Map<String, dynamic>>> register(
    Register register,
  ) async {
    const String endpoint = '/api/base/v1/clients';

    developer
        .log('Intentando registrar usuario con datos: ${register.toJson()}');
    developer.log('Endpoint utilizado: $endpoint');

    networkService.updateHeader({
      'X-AUTH-TOKEN': token,
    });

    final response = await networkService.post(
      endpoint,
      data: register.toJson(),
    );

    response.fold(
      (error) => developer.log('Error en el registro: ${error.toString()}'),
      (success) => developer.log('Registro exitoso: ${success.data}'),
    );

    return response.fold(
      (e) => Left(APIFailure.fromException(e)),
      (success) => Right(success.data as Map<String, dynamic>),
    );
  }
}
