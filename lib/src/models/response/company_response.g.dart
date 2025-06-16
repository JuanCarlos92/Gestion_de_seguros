// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyResponseImpl _$$CompanyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CompanyResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      logoImage: json['logo_image'] as String?,
      appointmentLetter: _appointmentLetterFromJson(json['appointment_letter']),
    );

Map<String, dynamic> _$$CompanyResponseImplToJson(
        _$CompanyResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_image': instance.logoImage,
      'appointment_letter':
          _appointmentLetterToJson(instance.appointmentLetter),
    };
