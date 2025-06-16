import '../../../../../core/utils/exports.dart';
import '../../../../../providers/auth/token/token_dev_provider.dart';
import 'package:biencubierto/src/core/services/change_password_service.dart';
part 'change_password_service_injection.g.dart';

@riverpod
ChangePasswordService changePasswordService(Ref ref) {
  final NetworkService networkService = ref.watch(networkServiceProvider);
  final String token = ref.watch(tokenDevProvider);
  return ChangePasswordService(
    networkService: networkService,
    token: token,
  );
}
