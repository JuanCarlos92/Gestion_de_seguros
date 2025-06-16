import '../../../../core/utils/exports.dart';

class RegisterForm extends StatefulWidget {
  final Function(RegisterData) onSubmit;

  const RegisterForm({
    super.key,
    required this.onSubmit,
  });

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _phonePrefixController = TextEditingController(text: '+34');
  final _emailController = TextEditingController();
  final _birthdayController = TextEditingController();
  DateTime? _selectedDate;
  String _phonePrefix = '+34';

  @override
  void dispose() {
    _nameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    _phonePrefixController.dispose();
    _emailController.dispose();
    _birthdayController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _birthdayController.text =
            "${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Contenedor(
        children: [
          Texto(
            labelText: '',
            hintText: 'Nombre',
            controller: _nameController,
            prefixIcon: Icons.person_outline,
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingrese su nombre';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          Texto(
            labelText: '',
            hintText: 'Apellidos',
            controller: _lastNameController,
            prefixIcon: Icons.person_outline,
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingrese sus apellidos';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          Texto(
            labelText: '',
            hintText: 'Fecha de nacimiento',
            controller: _birthdayController,
            prefixIcon: Icons.calendar_today,
            readOnly: true,
            onTap: () => _selectDate(context),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor seleccione su fecha de nacimiento';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          CountryPhoneSelector(
            phoneController: _phoneController,
            prefixController: _phonePrefixController,
            onPrefixChanged: (prefix) {
              setState(() {
                _phonePrefix = prefix;
              });
            },
          ),
          const SizedBox(height: 16),
          Texto(
            labelText: '',
            hintText: 'Correo electrónico',
            controller: _emailController,
            prefixIcon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingrese su correo electrónico';
              }
              if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                  .hasMatch(value)) {
                return 'Por favor ingrese un correo válido';
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          Button(
            text: 'Registrarse',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                widget.onSubmit(
                  RegisterData(
                    name: _nameController.text,
                    lastname: _lastNameController.text,
                    birthday: _birthdayController.text,
                    phone: _phoneController.text,
                    phonePrefix: _phonePrefix,
                    email: _emailController.text,
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
