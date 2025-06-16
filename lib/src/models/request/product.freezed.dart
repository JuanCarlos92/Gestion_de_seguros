// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get client => throw _privateConstructorUsedError;
  int get family => throw _privateConstructorUsedError;
  int get company => throw _privateConstructorUsedError;
  String get expiration => throw _privateConstructorUsedError;
  int get paymentFrequency => throw _privateConstructorUsedError;
  List<String> get requirements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int client,
      int family,
      int company,
      String expiration,
      int paymentFrequency,
      List<String> requirements});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
    Object? family = null,
    Object? company = null,
    Object? expiration = null,
    Object? paymentFrequency = null,
    Object? requirements = null,
  }) {
    return _then(_value.copyWith(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as int,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as int,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as int,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String,
      paymentFrequency: null == paymentFrequency
          ? _value.paymentFrequency
          : paymentFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int client,
      int family,
      int company,
      String expiration,
      int paymentFrequency,
      List<String> requirements});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
    Object? family = null,
    Object? company = null,
    Object? expiration = null,
    Object? paymentFrequency = null,
    Object? requirements = null,
  }) {
    return _then(_$ProductImpl(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as int,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as int,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as int,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String,
      paymentFrequency: null == paymentFrequency
          ? _value.paymentFrequency
          : paymentFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      requirements: null == requirements
          ? _value._requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.client,
      required this.family,
      required this.company,
      required this.expiration,
      required this.paymentFrequency,
      required final List<String> requirements})
      : _requirements = requirements;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int client;
  @override
  final int family;
  @override
  final int company;
  @override
  final String expiration;
  @override
  final int paymentFrequency;
  final List<String> _requirements;
  @override
  List<String> get requirements {
    if (_requirements is EqualUnmodifiableListView) return _requirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requirements);
  }

  @override
  String toString() {
    return 'Product(client: $client, family: $family, company: $company, expiration: $expiration, paymentFrequency: $paymentFrequency, requirements: $requirements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            (identical(other.paymentFrequency, paymentFrequency) ||
                other.paymentFrequency == paymentFrequency) &&
            const DeepCollectionEquality()
                .equals(other._requirements, _requirements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      client,
      family,
      company,
      expiration,
      paymentFrequency,
      const DeepCollectionEquality().hash(_requirements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final int client,
      required final int family,
      required final int company,
      required final String expiration,
      required final int paymentFrequency,
      required final List<String> requirements}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int get client;
  @override
  int get family;
  @override
  int get company;
  @override
  String get expiration;
  @override
  int get paymentFrequency;
  @override
  List<String> get requirements;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
