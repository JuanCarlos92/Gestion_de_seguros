import '../../core/utils/exports.dart';

// Clase que representa la respuesta de una petición HTTP
class Response extends Equatable {
  // Código de estado de la respuesta HTTP (ej: 200, 404, 500)
  final int statusCode;
  // Mensaje descriptivo del estado (opcional)
  final String? statusMessage;
  // Datos de la respuesta en formato dinámico
  final dynamic data;

  // Constructor constante que requiere código de estado y datos
  const Response(
      {required this.statusCode, this.statusMessage, required this.data});

  // Implementación de Equatable para comparar respuestas
  // Solo compara statusMessage y statusCode, no los datos
  @override
  List<Object?> get props => [statusMessage, statusCode];
}
