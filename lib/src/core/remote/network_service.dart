import 'package:dartz/dartz.dart';
import 'package:biencubierto/src/core/errors/exceptions.dart';
import '../models/response.dart';

// Clase abstracta: Se utiliza para realizar peticiones HTTP y manejar las respuestas
abstract class NetworkService {
  // URL base para todas las peticiones de la API
  String get baseUrl;

  // Cabeceras por defecto que se enviarán en cada petición
  Map<String, Object> get headers;

  // Método para actualizar las cabeceras, útil para añadir tokens de autenticación
  void updateHeader(Map<String, dynamic> data);

  // Realiza una petición GET a la API
  // endpoint: ruta específica de la API
  // queryParameters: parámetros opcionales para la URL
  // Retorna un Either que puede contener una excepción o una respuesta exitosa
  Future<Either<APIException, Response>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  });

  // Realiza una petición POST a la API
  // endpoint: ruta específica de la API
  // data: cuerpo de la petición en formato JSON
  // Retorna un Either que puede contener una excepción o una respuesta exitosa
  Future<Either<APIException, Response>> post(
    String endpoint, {
    Map<String, dynamic>? data,
  });

  // Realiza una petición PATCH a la API
  // endpoint: ruta específica de la API
  // data: cuerpo de la petición en formato JSON
  // Retorna un Either que puede contener una excepción o una respuesta exitosa
  Future<Either<APIException, Response>> patch(
    String endpoint, {
    Map<String, dynamic>? data,
  });

  // Realiza una petición PUT a la API
  // endpoint: ruta específica de la API
  // data: cuerpo de la petición en formato JSON
  // Retorna un Either que puede contener una excepción o una respuesta exitosa
  Future<Either<APIException, Response>> put(
    String endpoint, {
    Map<String, dynamic>? data,
  });
}
