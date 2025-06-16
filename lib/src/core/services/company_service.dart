// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';
import '../utils/exports.dart';

class CompanyService {
  final NetworkService networkService;

  CompanyService({
    required this.networkService,
  });

  Future<Either<Failure, List<CompanyResponse>>> getCompanies() async {
    const String endpoint = '/api/v1/companies';

    final response = await networkService.get(endpoint);

    return response.fold(
      (e) => Left(APIFailure.fromException(e)),
      (data) {
        final List<dynamic> companiesJson = data.data as List<dynamic>;
        final companies = companiesJson
            .map((json) =>
                CompanyResponse.fromJson(json as Map<String, dynamic>))
            .toList();

        return Right(companies);
      },
    );
  }

  Future<Either<Failure, dynamic>> getCompanyLogo(String logoImage) async {
    final String endpoint = '/api/v1/assets/logo/$logoImage';

    final response = await networkService.get(endpoint);

    return response.fold(
      (e) => Left(APIFailure.fromException(e)),
      (data) {
        print('Tipo de data.data: ${data.data.runtimeType}');
        if (data.data is String) {
          print('Contenido (parcial) del String recibido: ${(data.data as String).substring(0, 50)}');
        } else if (data.data is List<int>) {
          print('Longitud de List<int> recibida: ${(data.data as List<int>).length}');
        } else {
          print('Contenido recibido: ${data.data}');
        }
        return Right(data.data);
      },
    );
  }
}
