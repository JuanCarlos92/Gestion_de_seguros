import '../../../../core/utils/exports.dart';
part 'auth_service_injection.g.dart';

// Proveedor de Riverpod que crea una instancia del servicio de autenticación
// Este proveedor puede ser inyectado en cualquier parte de la aplicación que necesite
// funcionalidad de autenticación
@riverpod
// ignore: deprecated_member_use_from_same_package
AuthServices authServices(AuthServicesRef ref) {
  // Obtiene una instancia del servicio de red a través de Riverpod
  final NetworkService networkService = ref.watch(networkServiceProvider);
  // Crea y retorna una nueva instancia del servicio de autenticación
  return AuthServices(networkService: networkService);
}
