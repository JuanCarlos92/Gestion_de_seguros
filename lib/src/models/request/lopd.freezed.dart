// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lopd.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Lopd _$LopdFromJson(Map<String, dynamic> json) {
  return _Lopd.fromJson(json);
}

/// @nodoc
mixin _$Lopd {
  bool get accepted => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LopdCopyWith<Lopd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LopdCopyWith<$Res> {
  factory $LopdCopyWith(Lopd value, $Res Function(Lopd) then) =
      _$LopdCopyWithImpl<$Res, Lopd>;
  @useResult
  $Res call({bool accepted, String token});
}

/// @nodoc
class _$LopdCopyWithImpl<$Res, $Val extends Lopd>
    implements $LopdCopyWith<$Res> {
  _$LopdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accepted = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      accepted: null == accepted
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LopdImplCopyWith<$Res> implements $LopdCopyWith<$Res> {
  factory _$$LopdImplCopyWith(
          _$LopdImpl value, $Res Function(_$LopdImpl) then) =
      __$$LopdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool accepted, String token});
}

/// @nodoc
class __$$LopdImplCopyWithImpl<$Res>
    extends _$LopdCopyWithImpl<$Res, _$LopdImpl>
    implements _$$LopdImplCopyWith<$Res> {
  __$$LopdImplCopyWithImpl(_$LopdImpl _value, $Res Function(_$LopdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accepted = null,
    Object? token = null,
  }) {
    return _then(_$LopdImpl(
      accepted: null == accepted
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LopdImpl implements _Lopd {
  const _$LopdImpl({required this.accepted, required this.token});

  factory _$LopdImpl.fromJson(Map<String, dynamic> json) =>
      _$$LopdImplFromJson(json);

  @override
  final bool accepted;
  @override
  final String token;

  @override
  String toString() {
    return 'Lopd(accepted: $accepted, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LopdImpl &&
            (identical(other.accepted, accepted) ||
                other.accepted == accepted) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accepted, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LopdImplCopyWith<_$LopdImpl> get copyWith =>
      __$$LopdImplCopyWithImpl<_$LopdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LopdImplToJson(
      this,
    );
  }
}

abstract class _Lopd implements Lopd {
  const factory _Lopd(
      {required final bool accepted, required final String token}) = _$LopdImpl;

  factory _Lopd.fromJson(Map<String, dynamic> json) = _$LopdImpl.fromJson;

  @override
  bool get accepted;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$LopdImplCopyWith<_$LopdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
