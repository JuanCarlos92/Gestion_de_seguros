// ignore_for_file: deprecated_member_use_from_same_package
import '../../utils/exports.dart';
part 'dio_network_injection.g.dart';

// Proveedor de Riverpod que crea una instancia de Dio
// Se utiliza para realizar peticiones HTTP
@riverpod
Dio dioInstance(DioInstanceRef ref) {
  return Dio();
}

// Proveedor de Riverpod que crea una instancia del servicio de red
// Utiliza la instancia de Dio creada por el proveedor anterior
// Este servicio se puede inyectar en cualquier parte de la aplicación
@riverpod
NetworkService networkService(NetworkServiceRef ref) {
  final Dio dio = ref.watch(dioInstanceProvider);
  return DioNetworkService(dio);
}
