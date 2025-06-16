import '../../../core/utils/exports.dart';

class CountryPhoneSelector extends StatefulWidget {
  final TextEditingController phoneController;
  final TextEditingController prefixController;
  final Function(String) onPrefixChanged;

  const CountryPhoneSelector({
    super.key,
    required this.phoneController,
    required this.prefixController,
    required this.onPrefixChanged,
  });

  @override
  State<CountryPhoneSelector> createState() => _CountryPhoneSelectorState();
}

class _CountryPhoneSelectorState extends State<CountryPhoneSelector> {
  void _selectCountry() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      countryListTheme: CountryListThemeData(
        backgroundColor: Colors.white,
        textStyle: const TextStyle(color: Colors.black),
        borderRadius: BorderRadius.circular(15),
      ),
      onSelect: (Country country) {
        final prefix = '+${country.phoneCode}';
        widget.prefixController.text = prefix;
        widget.onPrefixChanged(prefix);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          margin: const EdgeInsets.only(right: 8),
          child: Texto(
            labelText: '',
            hintText: 'Pais',
            controller: widget.prefixController,
            prefixIcon: Icons.flag,
            readOnly: true,
            onTap: _selectCountry,
          ),
        ),
        Expanded(
          child: Texto(
            labelText: '',
            hintText: 'Telefono',
            controller: widget.phoneController,
            prefixIcon: Icons.phone,
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingrese su teléfono';
              }
              if (!RegExp(r'^\d{9}$').hasMatch(value)) {
                return 'Ingrese un número válido de 9 dígitos';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
