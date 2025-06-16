import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:biencubierto/src/core/utils/typedef.dart';

part 'change_password.freezed.dart';
part 'change_password.g.dart';

// Clase inmutable que representa los parámetros necesarios para el register
// Usa freezed para generar automáticamente código repetitivo
@freezed
class ChangePassword with _$ChangePassword {
  // Constructor de fábrica que define los campos requeridos
  const factory ChangePassword({
    required String username,
    required String oneUsePassword,
    required String password,
    required String password2,
  }) = _ChangePassword;

  // Constructor de fábrica para crear una instancia desde JSON
  factory ChangePassword.fromJson(DataMap json) =>
      _$ChangePasswordFromJson(json);
}
