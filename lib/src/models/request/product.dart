import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:biencubierto/src/core/utils/typedef.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int client,
    required int family,
    required int company,
    required String expiration,
    required int paymentFrequency,
    required List<String> requirements,
  }) = _Product;

  factory Product.fromJson(DataMap json) => _$ProductFromJson(json);
}
