import 'package:flutter/foundation.dart';
import '../../core/utils/exports.dart';
import '../models/response.dart' as r;

// Implementación del servicio de red usando el paquete Dio
// Incluye manejo de excepciones a través del mixin ExceptionHandlerMixin
class DioNetworkService extends NetworkService with ExceptionHandlerMixin {
  // Instancia de Dio para realizar las peticiones HTTP
  final Dio dio;

  // Constructor que configura Dio con las opciones base y los interceptores
  DioNetworkService(this.dio) {
    if (!kTestMode) {
      dio.options = dioBaseOptions;
      // Añade logs detallados en modo debug
      if (kDebugMode) {
        dio.interceptors
            .add(LogInterceptor(requestBody: true, responseBody: true));
      }
    }
  }

  // Configuración base para todas las peticiones Dio
  BaseOptions get dioBaseOptions => BaseOptions(
        baseUrl: baseUrl,
        headers: headers,
      );

  // URL base obtenida de la configuración del entorno
  @override
  String get baseUrl => EnvInfo.connectionsString;

  // Cabeceras por defecto para las peticiones JSON
  @override
  Map<String, Object> get headers => {
        'accept': 'application/json',
        'content-type': 'application/json',
      };

  // Actualiza las cabeceras de las peticiones
  // Útil para añadir tokens de autenticación
  @override
  Map<String, dynamic>? updateHeader(Map<String, dynamic> data) {
    final header = {...headers, ...data};
    if (!kTestMode) {
      dio.options.headers = header;
    }
    return header;
  }

  // Realiza una petición POST
  // Maneja las excepciones y retorna un Either con el resultado
  @override
  ResultNetwork<r.Response> post(String endpoint,
      {Map<String, dynamic>? data}) {
    final res = handleException(
        () => dio.post(
              endpoint,
              data: data,
            ),
        endpoint: endpoint);
    return res;
  }

  // Realiza una petición GET
  // Maneja las excepciones y retorna un Either con el resultado
  @override
  ResultNetwork<r.Response> get(String endpoint,
      {Map<String, dynamic>? queryParameters}) {
    final res = handleException(
        () => dio.get(
              endpoint,
              queryParameters: queryParameters,
            ),
        endpoint: endpoint);
    return res;
  }

  // Realiza una petición PATCH
  // Maneja las excepciones y retorna un Either con el resultado
  @override
  ResultNetwork<r.Response> patch(String endpoint,
      {Map<String, dynamic>? data}) {
    final res = handleException(
        () => dio.patch(
              endpoint,
              data: data,
            ),
        endpoint: endpoint);
    return res;
  }

  // Realiza una petición PUT
  // Maneja las excepciones y retorna un Either con el resultado
  @override
  ResultNetwork<r.Response> put(String endpoint, {Map<String, dynamic>? data}) {
    final res = handleException(
        () => dio.put(
              endpoint,
              data: data,
            ),
        endpoint: endpoint);
    return res;
  }
}
