import '../../core/utils/exports.dart';

// Clase para manejar excepciones específicas de la API
class APIException extends Equatable implements Exception {
  // Constructor constante que requiere todos los campos
  const APIException({
    required this.message,
    required this.statusCode,
    required this.identifier,
  });

  // Propiedades finales para almacenar la información del error
  final String message; // Mensaje de error para mostrar al usuario
  final int statusCode; // Código de estado HTTP (ej: 404, 500)
  final String identifier; // Identificador único para rastrear el error

  // Implementación requerida por Equatable
  // Define qué propiedades se usan para comparar instancias
  @override
  List<Object?> get props => [message, statusCode, identifier];
}
