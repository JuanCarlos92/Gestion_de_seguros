// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientResponseImpl _$$ClientResponseImplFromJson(Map<String, dynamic> json) =>
    _$ClientResponseImpl(
      underscoreId: json['_'] as String,
      clientId: json['clientId'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      hash: json['hash'] as String,
      gender: (json['gender'] as num).toInt(),
      civilStatus: (json['civilStatus'] as num?)?.toInt(),
      email: json['email'] as String,
      dniType: (json['dniType'] as num?)?.toInt(),
      dniTypeName: json['dniTypeName'] as String?,
      dni: json['dni'] as String,
      dniDate: json['dniDate'] as String,
      lopdAccepted: json['lopdAccepted'] as bool,
      birthday: json['birthday'] as String,
      birthDate: json['birthDate'] as String,
      phone: json['phone'] as String,
      phonePrefix: json['phonePrefix'] as String,
      postalCode: json['postalCode'] as String,
      company: json['company'] as String?,
      verified: json['verified'] as bool,
      verifiedAge: json['verifiedAge'] as bool,
      type: (json['type'] as num).toInt(),
      address: json['address'] as List<dynamic>,
      addresses: json['addresses'] as List<dynamic>,
      bankAccounts: json['bankAccounts'] as List<dynamic>,
      budgets: json['budgets'] as List<dynamic>,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClientResponseImplToJson(
        _$ClientResponseImpl instance) =>
    <String, dynamic>{
      '_': instance.underscoreId,
      'clientId': instance.clientId,
      'id': instance.id,
      'name': instance.name,
      'lastName': instance.lastName,
      'hash': instance.hash,
      'gender': instance.gender,
      'civilStatus': instance.civilStatus,
      'email': instance.email,
      'dniType': instance.dniType,
      'dniTypeName': instance.dniTypeName,
      'dni': instance.dni,
      'dniDate': instance.dniDate,
      'lopdAccepted': instance.lopdAccepted,
      'birthday': instance.birthday,
      'birthDate': instance.birthDate,
      'phone': instance.phone,
      'phonePrefix': instance.phonePrefix,
      'postalCode': instance.postalCode,
      'company': instance.company,
      'verified': instance.verified,
      'verifiedAge': instance.verifiedAge,
      'type': instance.type,
      'address': instance.address,
      'addresses': instance.addresses,
      'bankAccounts': instance.bankAccounts,
      'budgets': instance.budgets,
      'products': instance.products,
    };
