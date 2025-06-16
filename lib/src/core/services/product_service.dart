// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';
import '../utils/exports.dart';
import '../../models/request/product.dart';

class ProductService {
  final NetworkService networkService;

  ProductService({
    required this.networkService,
  });

  Future<Either<Failure, Map<String, dynamic>>> createProduct(
      Product product, String token) async {
    const String endpoint = '/api/v1/products/fast-product';

    networkService.updateHeader({
      'X-AUTH-TOKEN': token,
    });

    print('Iniciando llamada al servicio createProduct');
    final response = await networkService.post(
      endpoint,
      data: product.toJson(),
    );
    print('Respuesta del servidor: $response');

    return response.fold(
      (e) => Left(APIFailure.fromException(e)),
      (data) => Right(data.data as Map<String, dynamic>),
    );
  }
}
