// ignore_for_file: avoid_print

import '../../providers/auth/client/client_provider.dart';
import '../../providers/auth/token/token_provider.dart';
import '../../core/utils/exports.dart';
import '../../pages/product/ui/models/enum/enum_payment_frequency.dart';
import 'product_controller.dart';

class ProductFormController {
  final WidgetRef ref;

  ProductFormController(this.ref);

  Future<bool> submitForm(
    EnumPaymentFrequency frequency,
    String postalCode,
    DateTime endDate,
    int familyId,
    int companyId,
  ) async {
    try {
      // Obtener el productController
      final productController = ref.read(productControllerProvider.notifier);
      // Obtener el cliente
      final client = ref.read(clientNotifierProvider);
      // Obtener el token
      final token = ref.read(authTokenNotifierProvider);

      print('Datos de autenticación:');
      print('ID Cliente: ${client?.clientId}');
      print('Token: $token');

      // Verificar si el ID del cliente y el token están disponibles
      if (client == null || token == null) {
        print('Error: clientId o token son null');
        return false;
      }

      productController.setClient(int.parse(client.clientId));
      productController.setFamily(familyId);
      productController.setCompany(companyId);
      // Formatear fecha de finalización
      final formattedDate =
          "${endDate.toLocal().year}-${endDate.toLocal().month.toString().padLeft(2, '0')}-${endDate.toLocal().day.toString().padLeft(2, '0')}";
      productController.setExpiration(formattedDate);
      productController.setPaymentFrequency(frequency.value);
      productController.setRequirements({'Código postal': postalCode});

      print('Fecha original: $endDate');
      print('Fecha formateada: $formattedDate');
      print('Intentando crear producto en ProductFormController');
      // Crear el producto
      await productController.createProduct(token);
      print('Producto creado exitosamente en ProductFormController');

      return true;
    } catch (e) {
      print('Error en ProductFormController: $e');
      return false;
    }
  }
}
