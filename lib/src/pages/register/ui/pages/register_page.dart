// ignore_for_file: avoid_print

import '../../../../core/success/success_utils.dart';
import '../../../../core/utils/exports.dart';

class RegisterPage extends ConsumerWidget {
  const RegisterPage({super.key});

  Future<void> _handleRegister(
      BuildContext context, RegisterData formData, WidgetRef ref) async {
    // Guardar el email en el controller antes de hacer el registro
    ref.read(registerControllerProvider.notifier).setEmail(formData.email);
    print('Email guardado en registro: ${formData.email}');

    // Obtiene el servicio de registro a través del provider
    final registerService = ref.read(registerServicesProvider);

    final result = await registerService.register(
      Register(
        name: formData.name,
        lastName: formData.lastname,
        birthday: formData.birthday,
        phone: formData.phone,
        phonePrefix: formData.phonePrefix,
        email: formData.email,
      ),
    );

    result.fold(
      (failure) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(failure.message)),
        );
      },
      (_) => SuccessUtils.manejarChangePassword(context, formData.email),
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
                RegisterForm(
                  onSubmit: (RegisterData formData) =>
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
