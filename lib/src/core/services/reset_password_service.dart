import 'package:dartz/dartz.dart';
import '../../models/request/reset_password.dart';
import '../utils/exports.dart';
import 'dart:developer' as developer;

class ResetPasswordService {
  final NetworkService networkService;
  final String token;

  ResetPasswordService({
    required this.networkService,
    required this.token,
  });

  Future<Either<Failure, Map<String, dynamic>>> resetPassword(
    ResetPassword resetPassword,
  ) async {
    const String endpoint = '/api/base/v1/clients/reset-password';

    developer.log(
        'Intentando generar una contraseña nueva con datos: ${resetPassword.toJson()}');
    developer.log('Endpoint utilizado: $endpoint');

    networkService.updateHeader({
      'X-AUTH-TOKEN': token,
    });

    final response = await networkService.put(
      endpoint,
      data: resetPassword.toJson(),
    );

    response.fold(
      (error) => developer
          .log('Error al asignar la nueva contraseña: ${error.toString()}'),
      (success) => developer.log('Reseteo de clave exitoso: ${success.data}'),
    );

    return response.fold(
      (e) => Left(APIFailure.fromException(e)),
      (success) => Right(success.data as Map<String, dynamic>),
    );
  }
}
