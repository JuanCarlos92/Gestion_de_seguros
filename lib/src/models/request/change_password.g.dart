// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePasswordImpl _$$ChangePasswordImplFromJson(Map<String, dynamic> json) =>
    _$ChangePasswordImpl(
      username: json['username'] as String,
      oneUsePassword: json['oneUsePassword'] as String,
      password: json['password'] as String,
      password2: json['password2'] as String,
    );

Map<String, dynamic> _$$ChangePasswordImplToJson(
        _$ChangePasswordImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'oneUsePassword': instance.oneUsePassword,
      'password': instance.password,
      'password2': instance.password2,
    };
