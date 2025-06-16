import '../../core/utils/exports.dart';
import '../../models/request/product.dart';
import '../../pages/product/provider/injection/product_service_injection.dart';
import '../../pages/product/provider/state/product_state.dart';
part 'product_controller.g.dart';

// Controlador para manejar los productos usando Riverpod
@Riverpod(keepAlive: true)
class ProductController extends _$ProductController {
  // Variables para almacenar los datos del producto
  late int _client;
  late int _family;
  late int _company;
  late String _expiration;
  late int _paymentFrequency;
  late List<String> _requirements;

  // Estado inicial del controlador de productos
  @override
  ProductState build() {
    return ProductState.inital();
  }

  // Método para crear un producto
  Future<void> createProduct(String token) async {
    state = ProductState.loading();

    Product product = Product(
      client: _client,
      family: _family,
      company: _company,
      expiration: _expiration,
      paymentFrequency: _paymentFrequency,
      requirements: _requirements,
    );

    final response =
        await ref.read(productServiceProvider).createProduct(product, token);

    state = response.fold(
      (failure) => ProductState.error(failure),
      (_) => ProductState.success(),
    );
  }

  // Métodos para actualizar los valores del producto
  setClient(int value) {
    _client = value;
  }

  setFamily(int value) {
    _family = value;
  }

  setCompany(int value) {
    _company = value;
  }

  setExpiration(String value) {
    _expiration = value;
  }

  setPaymentFrequency(int value) {
    _paymentFrequency = value;
  }

  setRequirements(Map<String, String> value) {
    _requirements = value.entries.map((e) => '"${e.key}": "${e.value}"').toList();
}
}
