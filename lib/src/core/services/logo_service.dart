import 'package:dartz/dartz.dart';
import '../utils/exports.dart';

class LogoService {
  final NetworkService networkService;

  LogoService({
    required this.networkService,
  });

  Future<Either<Failure, String>> getCompanyLogo(String logoImage) async {
    final String endpoint = 'api/v1/assets/logo/$logoImage';

    final response = await networkService.get(endpoint);

    return response.fold(
      (e) => Left(APIFailure.fromException(e)),
      (data) => Right(data.data as String),
    );
  }
}
