import '../../core/utils/exports.dart';

part 'lopd.freezed.dart';
part 'lopd.g.dart';

@freezed
class Lopd with _$Lopd {
  const factory Lopd({
    required bool accepted,
    required String token,
  }) = _Lopd;

  factory Lopd.fromJson(DataMap json) => _$LopdFromJson(json);
}

// @freezed
// class LoginResponse with _$LoginResponse {
//   const factory LoginResponse({
//     required String push,
//     required String token,
//     required ClientData client,
//   }) = _LoginResponse;

//   factory LoginResponse.fromJson(DataMap json) => _$LoginResponseFromJson(json);
// }

// @freezed
// class ClientData with _$ClientData {
//   const factory ClientData({
//     required String hash,
//     required String name,
//     required String lastName,
//     required String email,
//     required bool lopdAccepted,
//     required String id,
//   }) = _ClientData;

//   factory ClientData.fromJson(DataMap json) => _$ClientDataFromJson(json);
// }
