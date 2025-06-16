// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      client: (json['client'] as num).toInt(),
      family: (json['family'] as num).toInt(),
      company: (json['company'] as num).toInt(),
      expiration: json['expiration'] as String,
      paymentFrequency: (json['paymentFrequency'] as num).toInt(),
      requirements: (json['requirements'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'client': instance.client,
      'family': instance.family,
      'company': instance.company,
      'expiration': instance.expiration,
      'paymentFrequency': instance.paymentFrequency,
      'requirements': instance.requirements,
    };
