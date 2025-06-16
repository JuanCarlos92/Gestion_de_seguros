// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseImpl(
      id: json['id'] as String,
      createdDate: json['createdDate'] as String,
      policy: json['policy'] as String,
      own: json['own'] as bool,
      price: (json['price'] as num?)?.toDouble(),
      externalName: json['externalName'] as String,
      initiation: json['initiation'] as String,
      expiration: json['expiration'] as String,
      policyStart: json['policyStart'] as String?,
      paymentType: (json['paymentType'] as num).toInt(),
      paymentFrequency: (json['paymentFrequency'] as num).toInt(),
      isFullFilled: json['isFullFilled'] as bool,
      bankAccount: json['bankAccount'],
      campaignObject: json['campaignObject'],
      status: (json['status'] as num).toInt(),
      statusName: json['statusName'] as String,
      active: json['active'] as bool,
      companyName: json['companyName'] as String,
      productName: json['productName'] as String,
      productSubtype: json['productSubtype'] as String,
      familyId: (json['familyId'] as num).toInt(),
      priceRenovation: (json['priceRenovation'] as num?)?.toDouble(),
      requirements: json['requirements'],
      managements: json['managements'] as List<dynamic>,
    );

Map<String, dynamic> _$$ProductResponseImplToJson(
        _$ProductResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdDate': instance.createdDate,
      'policy': instance.policy,
      'own': instance.own,
      'price': instance.price,
      'externalName': instance.externalName,
      'initiation': instance.initiation,
      'expiration': instance.expiration,
      'policyStart': instance.policyStart,
      'paymentType': instance.paymentType,
      'paymentFrequency': instance.paymentFrequency,
      'isFullFilled': instance.isFullFilled,
      'bankAccount': instance.bankAccount,
      'campaignObject': instance.campaignObject,
      'status': instance.status,
      'statusName': instance.statusName,
      'active': instance.active,
      'companyName': instance.companyName,
      'productName': instance.productName,
      'productSubtype': instance.productSubtype,
      'familyId': instance.familyId,
      'priceRenovation': instance.priceRenovation,
      'requirements': instance.requirements,
      'managements': instance.managements,
    };
