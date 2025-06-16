import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:biencubierto/src/core/utils/typedef.dart';

part 'register.freezed.dart';
part 'register.g.dart';

// Clase inmutable que representa los parámetros necesarios para el register
// Usa freezed para generar automáticamente código repetitivo
@freezed
class Register with _$Register {
  // Constructor de fábrica que define los campos requeridos
  const factory Register({
    required String name,
    required String lastName,
    required String birthday,
    required String phone,
    required String phonePrefix,
    required String email,
  }) = _Register;

  // Constructor de fábrica para crear una instancia desde JSON
  factory Register.fromJson(DataMap json) => _$RegisterFromJson(json);
}
