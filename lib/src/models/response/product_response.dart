import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/utils/typedef.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    required String id,
    required String createdDate,
    required String policy,
    required bool own,
    double? price,
    required String externalName,
    required String initiation,
    required String expiration,
    String? policyStart,
    required int paymentType,
    required int paymentFrequency,
    required bool isFullFilled,
    dynamic bankAccount,
    dynamic campaignObject,
    required int status,
    required String statusName,
    required bool active,
    required String companyName,
    required String productName,
    required String productSubtype,
    required int familyId,
    double? priceRenovation,
    dynamic requirements,
    required List<dynamic> managements,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(DataMap json) =>
      _$ProductResponseFromJson(json);
}
