import '../../../../core/services/reset_password_service.dart';
import '../../../../core/utils/exports.dart';
import '../../../../providers/auth/token/token_dev_provider.dart';
part 'reset_password_service_injection.g.dart';

@riverpod
ResetPasswordService resetPasswordService(Ref ref) {
  final NetworkService networkService = ref.watch(networkServiceProvider);
  final String token = ref.watch(tokenDevProvider);
  return ResetPasswordService(
    networkService: networkService,
    token: token,
  );
}
