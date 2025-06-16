import '../../core/utils/exports.dart';

// Clase base abstracta para representar fallos en la aplicación
abstract class Failure extends Equatable {
  // Propiedades que todo fallo debe tener
  final String message; // Mensaje descriptivo del error
  final int statusCode; // Código de estado HTTP del error
  final String identifier; // Identificador único del error

  // Constructor que requiere todas las propiedades
  const Failure(
      {required this.message,
      required this.statusCode,
      required this.identifier});

  // Implementación de Equatable para comparaciones
  @override
  List<Object> get props => [message, statusCode, identifier];
}

// Implementación específica para fallos de la API
class APIFailure extends Failure {
  // Constructor que hereda los parámetros de la clase base
  const APIFailure(
      {required super.message,
      required super.statusCode,
      required super.identifier});

  // Constructor de fábrica que convierte una APIException en un APIFailure
  // Útil para transformar excepciones en fallos manejables
  APIFailure.fromException(APIException exception)
      : this(
            message: exception.message,
            statusCode: exception.statusCode,
            identifier: exception.identifier);
}
