// ignore_for_file: avoid_print

import '../../../../../core/success/success_utils.dart';
import '../../../../../models/request/change_password.dart';
import '../models/change_password_data.dart';
import '../widgets/input_widget.dart';
import '../../../../../core/utils/exports.dart';
import '../../provider/injection/change_password_service_injection.dart';

class ChangePasswordPage extends ConsumerWidget {
  final String email;
  const ChangePasswordPage({super.key, required this.email});

  Future<void> _handleRegister(
      BuildContext context, ChangePasswordData formData, WidgetRef ref) async {
    // Obtiene el servicio de registro a través del provider
    final changePasswordService = ref.read(changePasswordServiceProvider);

    print('Email recuperado para registerCode: $email');

    final result = await changePasswordService.changePassword(
      ChangePassword(
        username: email,
        oneUsePassword: formData.code,
        password: formData.password,
        password2: formData.confirmPassword,
      ),
    );

    result.fold(
      (failure) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(failure.message)),
        );
      },
      (_) => SuccessUtils.manejarExitoRegistroCode(context),
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
                const SizedBox(height: 20),
                Image.asset(
                  'assets/logo/biencubierto.png',
                  height: 100,
                ),
                const SizedBox(height: 16),
                ChangePasswordForm(
                  onSubmit: (ChangePasswordData formData) =>
                      _handleRegister(context, formData, ref),
                ),
                const SizedBox(height: 12),
                TextButton(
                  onPressed: () => context.go('/login'),
                  child: const Text(
                    '¿Ya tienes una cuenta? Inicia sesión',
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
