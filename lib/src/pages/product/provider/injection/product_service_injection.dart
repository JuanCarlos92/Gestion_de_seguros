// ignore_for_file: deprecated_member_use_from_same_package

import '../../../../core/utils/exports.dart';
import '../../../../core/services/product_service.dart';
part 'product_service_injection.g.dart';

@riverpod
ProductService productService(ProductServiceRef ref) {
  final NetworkService networkService = ref.watch(networkServiceProvider);
  return ProductService(networkService: networkService);
}
