import 'package:flutter/material.dart';
import '../../../../core/utils/exports.dart';
import '../../../../models/response/client_response.dart';

class EditProfileForm extends StatefulWidget {
  final Function(ClientResponse) onSubmit;
  final ClientResponse client;

  const EditProfileForm({
    super.key,
    required this.onSubmit,
    required this.client,
  });

  @override
  State<EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _phonePrefixController = TextEditingController();
  final _emailController = TextEditingController();
  final _postalCodeController = TextEditingController();
  final _dniController = TextEditingController();
  final _birthDateController = TextEditingController();

  late ClientResponse currentClient;

  @override
  void initState() {
    super.initState();
    currentClient = widget.client;
    _phoneController.text = currentClient.phone;
    _phonePrefixController.text = currentClient.phonePrefix;
    _emailController.text = currentClient.email;
    _postalCodeController.text = currentClient.postalCode;
    _dniController.text = currentClient.dni;
    _birthDateController.text = currentClient.birthDate;
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _phonePrefixController.dispose();
    _emailController.dispose();
    _postalCodeController.dispose();
    _dniController.dispose();
    _birthDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${currentClient.name} ${currentClient.lastName}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'roboto',
            ),
          ),
          const SizedBox(height: 3),

          // Campos no editables con estilo consistente
          Texto(
            labelText: 'DNI',
            hintText: currentClient.dni,
            controller: _dniController,
            readOnly: true,
            prefixIcon: Icons.badge_outlined,
          ),
          const SizedBox(height: 3),

          Texto(
            labelText: 'Fecha de nacimiento',
            hintText: currentClient.birthDate,
            controller: _birthDateController,
            readOnly: true,
            prefixIcon: Icons.calendar_today_outlined,
          ),
          const SizedBox(height: 3),

          // Campos editables
          CountryPhoneSelector(
            phoneController: _phoneController,
            prefixController: _phonePrefixController,
            onPrefixChanged: (prefix) {
              setState(() {
                currentClient = currentClient.copyWith(phonePrefix: prefix);
              });
            },
          ),
          const SizedBox(height: 3),

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
          const SizedBox(height: 3),

          Texto(
            labelText: '',
            hintText: 'Código postal',
            controller: _postalCodeController,
            prefixIcon: Icons.location_on,
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingrese su código postal';
              }
              return null;
            },
          ),
          const SizedBox(height: 5),

          Button(
            text: 'Guardar cambios',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                final updatedClient = currentClient.copyWith(
                  phone: _phoneController.text,
                  phonePrefix: _phonePrefixController.text,
                  email: _emailController.text,
                  postalCode: _postalCodeController.text,
                );
                widget.onSubmit(updatedClient);
              }
            },
          ),
        ],
      ),
    );
  }
}
