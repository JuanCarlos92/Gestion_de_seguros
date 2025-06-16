import '../../core/utils/exports.dart';

part 'login.freezed.dart';
part 'login.g.dart';

// Clase inmutable que representa los parámetros necesarios para el login
// Usa freezed para generar automáticamente código repetitivo
@freezed
class Login with _$Login {
  // Constructor de fabrica que define los campos requeridos
  const factory Login({
    required String username,
    required String password,
  }) = _Login;

  // Constructor de fábrica para crear una instancia desde JSON
  factory Login.fromJson(DataMap json) => _$LoginFromJson(json);
}
