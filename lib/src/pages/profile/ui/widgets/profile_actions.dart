import 'package:biencubierto/src/pages/profile/ui/widgets/action_button.dart';

import '../../../../core/success/success_utils.dart';
import '../../../../core/utils/exports.dart';
import '../../../../models/request/reset_password.dart';
import '../../../../models/response/client_response.dart';
import '../../../reset_password/provider/injection/reset_password_service_injection.dart';

class ProfileActions extends ConsumerWidget {
  final ClientResponse client;

  const ProfileActions({super.key, required this.client});

  Future<void> _handleResetPassword(BuildContext context, WidgetRef ref) async {
    final resetPasswordService = ref.read(resetPasswordServiceProvider);

    final result = await resetPasswordService.resetPassword(
      ResetPassword(
        username: client.email,
      ),
    );

    result.fold(
      (failure) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(failure.message)),
        );
      },
      (_) => SuccessUtils.manejarChangePwdPerfil(context, client.email),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ActionButton(
          text: 'Editar Perfil',
          icon: Icons.edit,
          onTap: () => context.go('/editProfile'),
        ),
        const SizedBox(height: 12),
        ActionButton(
          text: 'Cambiar Contraseña',
          icon: Icons.lock_outline,
          onTap: () => _handleResetPassword(context, ref),
        ),
      ],
    );
  }
}
