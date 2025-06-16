// ignore_for_file: library_private_types_in_public_api, use_super_parameters, avoid_print

import 'package:biencubierto/src/core/success/success_utils.dart';

import '../../../../controllers/reset_password/reset_password_controller.dart';
import '../../../../core/utils/exports.dart';
import '../../../../models/request/reset_password.dart';
import '../../provider/injection/reset_password_service_injection.dart';
import '../models/reset_password_data.dart';
import '../widgets/reset_password_form.dart';

class ResetPasswordPage extends ConsumerWidget {
  const ResetPasswordPage({super.key});

  Future<void> _handleResetPassword(
      BuildContext context, ResetPasswordData formData, WidgetRef ref) async {
    // Guardar el email en el contorller antes de hacer el reset password
    ref
        .read(resetPasswordControllerProvider.notifier)
        .setUsername(formData.username);
    print('Email guardado en reset password: ${formData.username}');

    // Obtiene el servicio de reset password a través del provider
    final resetPasswordService = ref.read(resetPasswordServiceProvider);

    final result = await resetPasswordService.resetPassword(
      ResetPassword(
        username: formData.username,
      ),
    );

    result.fold(
      (failure) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(failure.message)),
        );
      },
      (_) => SuccessUtils.manejarChangePassword(context, formData.username),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(height: 68),
                Image.asset(
                  'assets/logo/biencubierto.png',
                  height: 100,
                ),
                const SizedBox(height: 16),
                ResetPasswordForm(
                  onSubmit: (ResetPasswordData formData) =>
                      _handleResetPassword(context, formData, ref),
                ),
                const SizedBox(height: 12),
                TextButton(
                  onPressed: () => context.go('/login'),
                  child: const Text(
                    '¿Recordaste tu contraseña? Inicia sesión',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
