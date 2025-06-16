// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/utils/typedef.dart';
import 'product_response.dart';

part 'client_response.freezed.dart';
part 'client_response.g.dart';

@freezed
class ClientResponse with _$ClientResponse {
  const factory ClientResponse({
    @JsonKey(name: '_') required String underscoreId,
    required String clientId,
    required String id,
    required String name,
    required String lastName,
    required String hash,
    required int gender,
    required int? civilStatus,
    required String email,
    required int? dniType,
    required String? dniTypeName,
    required String dni,
    required String dniDate,
    required bool lopdAccepted,
    required String birthday,
    required String birthDate,
    required String phone,
    required String phonePrefix,
    required String postalCode,
    String? company,
    required bool verified,
    required bool verifiedAge,
    required int type,
    required List<dynamic> address,
    required List<dynamic> addresses,
    required List<dynamic> bankAccounts,
    required List<dynamic> budgets,
    required List<ProductResponse> products,
  }) = _ClientResponse;

  factory ClientResponse.fromJson(DataMap json) =>
      _$ClientResponseFromJson(json);
}
