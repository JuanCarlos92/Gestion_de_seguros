import 'package:dartz/dartz.dart';
import '../utils/exports.dart';
import 'dart:developer' as developer;

import '../../models/request/change_password.dart';

class ChangePasswordService {
  final NetworkService networkService;
  final String token;

  ChangePasswordService({
    required this.networkService,
    required this.token,
  });

  Future<Either<Failure, Map<String, dynamic>>> changePassword(
    ChangePassword changePassword,
  ) async {
    const String endpoint = '/api/base/v1/clients/change-password';

    developer.log(
        'Intentando Cambiar clave de registro con datos: ${changePassword.toJson()}');
    developer.log('Endpoint utilizado: $endpoint');

    networkService.updateHeader({
      'X-AUTH-TOKEN': token,
    });

    final response = await networkService.put(
      endpoint,
      data: changePassword.toJson(),
    );

    response.fold(
      (error) => developer
          .log('Error al asignar la nueva contraseña: ${error.toString()}'),
      (success) => developer.log('Registro exitoso: ${success.data}'),
    );

    return response.fold(
      (e) => Left(APIFailure.fromException(e)),
      (success) {
        // Si la respuesta es vacía, devolvemos un mapa vacío
        if (success.data is List && (success.data as List).isEmpty) {
          return const Right(<String, dynamic>{});
        }
        return Right(success.data as Map<String, dynamic>);
      },
    );
  }
}
