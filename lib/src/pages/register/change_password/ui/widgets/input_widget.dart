import '../../../../../core/utils/exports.dart';
import '../models/change_password_data.dart';

class ChangePasswordForm extends StatefulWidget {
  final Function(ChangePasswordData) onSubmit;

  const ChangePasswordForm({
    super.key,
    required this.onSubmit,
  });

  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final _codeController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _codeController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
            hintText: 'Código de verificación',
            controller: _codeController,
            prefixIcon: Icons.vpn_key,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingrese el código';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          Texto(
            labelText: '',
            hintText: 'Contraseña',
            controller: _passwordController,
            prefixIcon: Icons.lock,
            obscureText: !_isPasswordVisible,
            suffixIconWidget: IconButton(
              icon: Icon(
                _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'La contraseña no puede estar vacia';
              }
              if (value.length < 4) {
                return 'La contraseña debe tener al menos 4 caracteres';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          Texto(
            labelText: '',
            hintText: 'Confirmar Contraseña',
            controller: _confirmPasswordController,
            prefixIcon: Icons.lock_outline,
            obscureText: !_isPasswordVisible,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Las contraseñas no coinciden';
              }
              if (value != _passwordController.text) {
                return 'Las contraseñas no coinciden';
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          Button(
            text: 'Completar Registro',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                widget.onSubmit(
                  ChangePasswordData(
                    code: _codeController.text,
                    password: _passwordController.text,
                    confirmPassword: _confirmPasswordController.text,
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
