// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyResponse _$CompanyResponseFromJson(Map<String, dynamic> json) {
  return _CompanyResponse.fromJson(json);
}

/// @nodoc
mixin _$CompanyResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_image')
  String? get logoImage => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'appointment_letter',
      fromJson: _appointmentLetterFromJson,
      toJson: _appointmentLetterToJson)
  dynamic get appointmentLetter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyResponseCopyWith<CompanyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyResponseCopyWith<$Res> {
  factory $CompanyResponseCopyWith(
          CompanyResponse value, $Res Function(CompanyResponse) then) =
      _$CompanyResponseCopyWithImpl<$Res, CompanyResponse>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'logo_image') String? logoImage,
      @JsonKey(
          name: 'appointment_letter',
          fromJson: _appointmentLetterFromJson,
          toJson: _appointmentLetterToJson)
      dynamic appointmentLetter});
}

/// @nodoc
class _$CompanyResponseCopyWithImpl<$Res, $Val extends CompanyResponse>
    implements $CompanyResponseCopyWith<$Res> {
  _$CompanyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoImage = freezed,
    Object? appointmentLetter = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoImage: freezed == logoImage
          ? _value.logoImage
          : logoImage // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentLetter: freezed == appointmentLetter
          ? _value.appointmentLetter
          : appointmentLetter // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyResponseImplCopyWith<$Res>
    implements $CompanyResponseCopyWith<$Res> {
  factory _$$CompanyResponseImplCopyWith(_$CompanyResponseImpl value,
          $Res Function(_$CompanyResponseImpl) then) =
      __$$CompanyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'logo_image') String? logoImage,
      @JsonKey(
          name: 'appointment_letter',
          fromJson: _appointmentLetterFromJson,
          toJson: _appointmentLetterToJson)
      dynamic appointmentLetter});
}

/// @nodoc
class __$$CompanyResponseImplCopyWithImpl<$Res>
    extends _$CompanyResponseCopyWithImpl<$Res, _$CompanyResponseImpl>
    implements _$$CompanyResponseImplCopyWith<$Res> {
  __$$CompanyResponseImplCopyWithImpl(
      _$CompanyResponseImpl _value, $Res Function(_$CompanyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoImage = freezed,
    Object? appointmentLetter = freezed,
  }) {
    return _then(_$CompanyResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoImage: freezed == logoImage
          ? _value.logoImage
          : logoImage // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentLetter: freezed == appointmentLetter
          ? _value.appointmentLetter
          : appointmentLetter // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyResponseImpl implements _CompanyResponse {
  const _$CompanyResponseImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'logo_image') this.logoImage,
      @JsonKey(
          name: 'appointment_letter',
          fromJson: _appointmentLetterFromJson,
          toJson: _appointmentLetterToJson)
      this.appointmentLetter});

  factory _$CompanyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'logo_image')
  final String? logoImage;
  @override
  @JsonKey(
      name: 'appointment_letter',
      fromJson: _appointmentLetterFromJson,
      toJson: _appointmentLetterToJson)
  final dynamic appointmentLetter;

  @override
  String toString() {
    return 'CompanyResponse(id: $id, name: $name, logoImage: $logoImage, appointmentLetter: $appointmentLetter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoImage, logoImage) ||
                other.logoImage == logoImage) &&
            const DeepCollectionEquality()
                .equals(other.appointmentLetter, appointmentLetter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logoImage,
      const DeepCollectionEquality().hash(appointmentLetter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyResponseImplCopyWith<_$CompanyResponseImpl> get copyWith =>
      __$$CompanyResponseImplCopyWithImpl<_$CompanyResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyResponseImplToJson(
      this,
    );
  }
}

abstract class _CompanyResponse implements CompanyResponse {
  const factory _CompanyResponse(
      {required final int id,
      required final String name,
      @JsonKey(name: 'logo_image') final String? logoImage,
      @JsonKey(
          name: 'appointment_letter',
          fromJson: _appointmentLetterFromJson,
          toJson: _appointmentLetterToJson)
      final dynamic appointmentLetter}) = _$CompanyResponseImpl;

  factory _CompanyResponse.fromJson(Map<String, dynamic> json) =
      _$CompanyResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'logo_image')
  String? get logoImage;
  @override
  @JsonKey(
      name: 'appointment_letter',
      fromJson: _appointmentLetterFromJson,
      toJson: _appointmentLetterToJson)
  dynamic get appointmentLetter;
  @override
  @JsonKey(ignore: true)
  _$$CompanyResponseImplCopyWith<_$CompanyResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
