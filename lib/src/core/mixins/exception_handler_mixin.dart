import 'dart:developer';
import 'package:dartz/dartz.dart';
import '../models/response.dart' as r;
import '../../core/utils/exports.dart';

// Mixin para manejar excepciones en las peticiones de red
// Se aplica a clases que extiendan NetworkService
mixin ExceptionHandlerMixin on NetworkService {
  // Método genérico para manejar excepciones en peticiones HTTP
  // Recibe una función handler que realiza la petición y el endpoint para identificación
  ResultNetwork<r.Response> handleException<T extends Object>(
      Future<Response<dynamic>> Function() handler,
      {String endpoint = ''}) async {
    try {
      // Intenta ejecutar la petición
      final res = await handler();

      // Si la petición es exitosa, retorna Right con la respuesta
      return Right(
        r.Response(
          statusCode: res.statusCode ?? 200,
          data: res.data,
          statusMessage: res.statusMessage,
        ),
      );
    } catch (e) {
      // Variables para almacenar los detalles del error
      String message = '';
      String identifier = '';
      int statusCode = 0;

      // Registra el tipo de error en los logs
      log(e.runtimeType.toString());

      // Maneja diferentes tipos de excepciones
      switch (e.runtimeType) {
        case SocketException _:
          // Error de conexión con el servidor
          e as SocketException;
          message = 'No se puede conectar con el servidor';
          statusCode = 1;
          identifier = 'Socket Exception${e.message} \n at  $endpoint';
          break;

        case DioException _:
          // Error específico de Dio (cliente HTTP)
          e as DioException;
          message = e.response?.data?['message'] ??
              'Se ha producido un error interno';
          statusCode = 1;
          identifier = 'DioException ${e.message} \nat  $endpoint';
          break;

        default:
          // Errores no manejados específicamente
          message = 'Se ha producido un error desconocido';
          statusCode = 2;
          identifier = 'Error desconocido ${e.toString()}\n at $endpoint';
      }

      // Retorna Left con la excepción de API formateada
      return Left(
        APIException(
          message: message,
          statusCode: statusCode,
          identifier: identifier,
        ),
      );
    }
  }
}
