import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:biencubierto/src/core/utils/typedef.dart';

part 'reset_password.freezed.dart';
part 'reset_password.g.dart';

// Clase inmutable que representa los parámetros necesarios para el register
// Usa freezed para generar automáticamente código repetitivo
@freezed
class ResetPassword with _$ResetPassword {
  // Constructor de fábrica que define los campos requeridos
  const factory ResetPassword({
    required String username,
  }) = _ResetPassword;

  // Constructor de fábrica para crear una instancia desde JSON
  factory ResetPassword.fromJson(DataMap json) => _$ResetPasswordFromJson(json);
}
