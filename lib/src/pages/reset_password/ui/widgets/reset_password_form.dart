import 'package:biencubierto/src/pages/reset_password/ui/models/reset_password_data.dart';

import '../../../../core/utils/exports.dart';

class ResetPasswordForm extends StatefulWidget {
  final Function(ResetPasswordData) onSubmit;

  const ResetPasswordForm({
    super.key,
    required this.onSubmit,
  });

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Contenedor(
        backgroundColor: Colors.blue[600],
        children: [
          Texto(
            labelText: '',
            hintText: 'Correo Electrónico',
            controller: _usernameController,
            prefixIcon: Icons.email,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingrese su correo electrónico';
              }
              if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                return 'Por favor ingrese un correo válido';
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          Button(
            text: 'Recuperar Contraseña',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                widget.onSubmit(
                  ResetPasswordData(
                    username: _usernameController.text,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
