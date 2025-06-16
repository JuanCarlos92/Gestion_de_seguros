// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePassword _$ChangePasswordFromJson(Map<String, dynamic> json) {
  return _ChangePassword.fromJson(json);
}

/// @nodoc
mixin _$ChangePassword {
  String get username => throw _privateConstructorUsedError;
  String get oneUsePassword => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get password2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordCopyWith<ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordCopyWith<$Res> {
  factory $ChangePasswordCopyWith(
          ChangePassword value, $Res Function(ChangePassword) then) =
      _$ChangePasswordCopyWithImpl<$Res, ChangePassword>;
  @useResult
  $Res call(
      {String username,
      String oneUsePassword,
      String password,
      String password2});
}

/// @nodoc
class _$ChangePasswordCopyWithImpl<$Res, $Val extends ChangePassword>
    implements $ChangePasswordCopyWith<$Res> {
  _$ChangePasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? oneUsePassword = null,
    Object? password = null,
    Object? password2 = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      oneUsePassword: null == oneUsePassword
          ? _value.oneUsePassword
          : oneUsePassword // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      password2: null == password2
          ? _value.password2
          : password2 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordImplCopyWith<$Res>
    implements $ChangePasswordCopyWith<$Res> {
  factory _$$ChangePasswordImplCopyWith(_$ChangePasswordImpl value,
          $Res Function(_$ChangePasswordImpl) then) =
      __$$ChangePasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String oneUsePassword,
      String password,
      String password2});
}

/// @nodoc
class __$$ChangePasswordImplCopyWithImpl<$Res>
    extends _$ChangePasswordCopyWithImpl<$Res, _$ChangePasswordImpl>
    implements _$$ChangePasswordImplCopyWith<$Res> {
  __$$ChangePasswordImplCopyWithImpl(
      _$ChangePasswordImpl _value, $Res Function(_$ChangePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? oneUsePassword = null,
    Object? password = null,
    Object? password2 = null,
  }) {
    return _then(_$ChangePasswordImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      oneUsePassword: null == oneUsePassword
          ? _value.oneUsePassword
          : oneUsePassword // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      password2: null == password2
          ? _value.password2
          : password2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordImpl implements _ChangePassword {
  const _$ChangePasswordImpl(
      {required this.username,
      required this.oneUsePassword,
      required this.password,
      required this.password2});

  factory _$ChangePasswordImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePasswordImplFromJson(json);

  @override
  final String username;
  @override
  final String oneUsePassword;
  @override
  final String password;
  @override
  final String password2;

  @override
  String toString() {
    return 'ChangePassword(username: $username, oneUsePassword: $oneUsePassword, password: $password, password2: $password2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.oneUsePassword, oneUsePassword) ||
                other.oneUsePassword == oneUsePassword) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.password2, password2) ||
                other.password2 == password2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, oneUsePassword, password, password2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      __$$ChangePasswordImplCopyWithImpl<_$ChangePasswordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordImplToJson(
      this,
    );
  }
}

abstract class _ChangePassword implements ChangePassword {
  const factory _ChangePassword(
      {required final String username,
      required final String oneUsePassword,
      required final String password,
      required final String password2}) = _$ChangePasswordImpl;

  factory _ChangePassword.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordImpl.fromJson;

  @override
  String get username;
  @override
  String get oneUsePassword;
  @override
  String get password;
  @override
  String get password2;
  @override
  @JsonKey(ignore: true)
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
