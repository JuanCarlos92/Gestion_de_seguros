import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../models/response/client_response.dart';

part 'client_provider.g.dart';

@Riverpod(keepAlive: true)
class ClientNotifier extends _$ClientNotifier {
  @override
  ClientResponse? build() {
    return null;
  }

  void setClient(ClientResponse client) {
    state = client;
  }

  void clearClient() {
    state = null;
  }
}
