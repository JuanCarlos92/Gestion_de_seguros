import '../../../../core/utils/exports.dart';
import '../../../../providers/auth/token/token_dev_provider.dart';
part 'register_service_injection.g.dart';

@riverpod
RegisterServices registerServices(Ref ref) {
  final NetworkService networkService = ref.watch(networkServiceProvider);
  final String token = ref.watch(tokenDevProvider);
  return RegisterServices(
    networkService: networkService,
    token: token,
  );
}
