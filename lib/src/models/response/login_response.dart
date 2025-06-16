import 'package:biencubierto/src/models/response/client_response.dart';

import '../../core/utils/exports.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String? push,
    required String token,
    required ClientResponse client,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(DataMap json) => _$LoginResponseFromJson(json);
}
