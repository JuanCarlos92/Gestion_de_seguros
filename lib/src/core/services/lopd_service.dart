// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';
import '../utils/exports.dart';

// Servicio encargado de manejar aceptar el lopd
class LOPDService {
  // Instancia del servicio de red para realizar peticiones HTTP
  final NetworkService networkService;

  // Constructor que requiere una instancia de NetworkService
  LOPDService({required this.networkService});

  // Método para realizar el lopdAccept
  // Retorna un ResultVoid (Either<Failure, void>) que indica éxito o fracaso
  ResultVoid acceptLOPD(Lopd lopd, String clientHash, String tokenLopd) async {
    final String endpoint = '/api/v1/clientApp/$clientHash/lopd-acceptance';

    print('=== LOPD Request Info ===');
    print('Endpoint: $endpoint');
    print('ClientHash: $clientHash');
    print('Token: $tokenLopd');
    print('=====================');

    // Actualizamos los headers con el token
    networkService.updateHeader({
      'X-AUTH-TOKEN': tokenLopd,
    });

    // Realizamos la petición usando el networkService
    final response = await networkService.patch(
      endpoint,
      data: {'accepted': lopd.accepted},
    );

    return response.fold(
      (e) => Left(APIFailure.fromException(e)),
      (_) => const Right(null),
    );
  }
}
