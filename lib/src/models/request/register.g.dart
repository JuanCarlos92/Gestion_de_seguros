// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterImpl _$$RegisterImplFromJson(Map<String, dynamic> json) =>
    _$RegisterImpl(
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      birthday: json['birthday'] as String,
      phone: json['phone'] as String,
      phonePrefix: json['phonePrefix'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$RegisterImplToJson(_$RegisterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lastName': instance.lastName,
      'birthday': instance.birthday,
      'phone': instance.phone,
      'phonePrefix': instance.phonePrefix,
      'email': instance.email,
    };
