import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_provider.g.dart';

@Riverpod(keepAlive: true)
class AuthTokenNotifier extends _$AuthTokenNotifier {
  @override
  String? build() {
    return null;
  }

  void setToken(String token) {
    state = token;
  }

  void clearToken() {
    state = null;
  }
}
