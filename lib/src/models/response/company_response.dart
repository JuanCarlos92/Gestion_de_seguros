// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:biencubierto/src/core/utils/typedef.dart';

part 'company_response.freezed.dart';
part 'company_response.g.dart';

// Clase inmutable que representa los parámetros de la compañía
@freezed
class CompanyResponse with _$CompanyResponse {
  const factory CompanyResponse({
    required int id,
    required String name,
    @JsonKey(name: 'logo_image') String? logoImage,
    @JsonKey(
      name: 'appointment_letter',
      fromJson: _appointmentLetterFromJson,
      toJson: _appointmentLetterToJson,
    )
    dynamic appointmentLetter,
  }) = _CompanyResponse;

  factory CompanyResponse.fromJson(DataMap json) =>
      _$CompanyResponseFromJson(json);
}

// Función auxiliar para convertir el valor de appointment_letter
dynamic _appointmentLetterToJson(dynamic value) {
  return value;
}

String? _appointmentLetterFromJson(dynamic value) {
  if (value == null) return null;
  return value.toString();
}
