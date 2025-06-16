// ignore_for_file: avoid_print

import 'package:biencubierto/src/pages/profile/change_password_profile/widgets/input_widget.dart';

import '../../../../core/success/success_utils.dart';
import '../../../../models/request/change_password.dart';
import '../../../register/change_password/provider/injection/change_password_service_injection.dart';
import '../../../register/change_password/ui/models/change_password_data.dart';
import '../../../../core/utils/exports.dart';
import '../../ui/widgets/profile_avatar.dart';

class ChangePwdProfilePage extends ConsumerWidget {
  final String email;
  const ChangePwdProfilePage({super.key, required this.email});

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
      (_) => SuccessUtils.manejarCambiarPwdCode(context),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.go('/profile'),
        ),
        title: Image.asset(
          'assets/logo/biencubierto.png',
          height: 40,
        ),
        centerTitle: true,
        elevation: 0,
        // title: const Text(
        //   'Cambiar Contraseña',
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontWeight: FontWeight.bold,
        //     fontSize: 26,
        //   ),
        // ),
        // centerTitle: true,
        // elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Avatar(),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 1),
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: ChangePwdForm(
                onSubmit: (ChangePasswordData formData) =>
                    _handleRegister(context, formData, ref),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
