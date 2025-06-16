import '../../../../core/utils/exports.dart';

class LoginForm extends StatefulWidget {
  final Function(LoginData) onSubmit;

  const LoginForm({
    super.key,
    required this.onSubmit,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Contenedor(
        children: [
          Texto(
            labelText: '',
            hintText: 'Correo electrónico',
            controller: _usernameController,
            prefixIcon: Icons.mail_outline,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingrese su correo electrónico';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          Texto(
            labelText: '',
            hintText: 'Contraseña',
            controller: _passwordController,
            prefixIcon: Icons.lock_outline,
            obscureText: !_isPasswordVisible,
            suffixIcon:
                _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
            suffixIconWidget: IconButton(
              icon: Icon(
                _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                color: Colors.black54,
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingrese su contraseña';
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          Button(
            text: 'Iniciar sesión',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                widget.onSubmit(
                  LoginData(
                    username: _usernameController.text,
                    password: _passwordController.text,
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
