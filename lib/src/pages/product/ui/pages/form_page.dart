// ignore_for_file: deprecated_member_use, avoid_print

import '../../../../core/success/success_utils.dart';
import '../../../../core/utils/exports.dart';
import '../../../home/ui/pages/home_page.dart';
import '../models/enum/enum_payment_frequency.dart';
import '../../../../controllers/product/product_form_controller.dart';
import '../widgets/product_form.dart';
import '../widgets/submit_button.dart';

class FormPage extends ConsumerStatefulWidget {
  final int familiaId;
  final int companyId;

  const FormPage({
    super.key,
    required this.familiaId,
    required this.companyId,
  });

  @override
  ConsumerState<FormPage> createState() => _FormPageState();
}

class _FormPageState extends ConsumerState<FormPage> {
  EnumPaymentFrequency selectedFrequency = EnumPaymentFrequency.mensual;
  final _postalCode = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late final ProductFormController _productformController;
  DateTime? selectedEndDate;

  @override
  void initState() {
    super.initState();
    _productformController = ProductFormController(ref);
  }

  void _onDateSelected(DateTime date) {
    setState(() {
      selectedEndDate = date;
    });
  }

  Future<void> _handleSubmit() async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    // Validación de fecha
    if (selectedEndDate == null) {
      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: Text(
              'Por favor, seleccione la fecha de finalización del seguro actual'),
        ),
      );
      return;
    }

    // Validación de código postal
    if (_postalCode.text.isEmpty) {
      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: Text('Por favor, ingrese el código postal'),
        ),
      );
      return;
    }

    if (_formKey.currentState?.validate() ?? false) {
      // El formulario es válido, proceder con el envío
      // Formatear los datos antes de enviarlos
      final frequency = selectedFrequency.name;
      final endDate = selectedEndDate!;

      print('Datos a enviar:');
      print('Frecuencia: $frequency');
      print('Código Postal: ${_postalCode.text}');
      print('Fecha fin: $endDate');
      print('ID Familia: ${widget.familiaId}');
      print('ID Compañía: ${widget.companyId}');

      final success = await _productformController.submitForm(
        EnumPaymentFrequency.values.firstWhere((e) => e.name == frequency),
        _postalCode.text,
        endDate,
        widget.familiaId,
        widget.companyId,
      );

      if (!mounted) return;

      if (success) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Producto creado exitosamente'),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
          ),
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      } else {
        scaffoldMessenger.showSnackBar(
          const SnackBar(content: Text('Error al crear el producto')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ProductBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue, width: 1.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                child: ProductForm(
                  formKey: _formKey,
                  selectedEndDate: selectedEndDate,
                  onDateSelected: _onDateSelected,
                  selectedFrequency: selectedFrequency,
                  onFrequencyChanged: (EnumPaymentFrequency? newValue) {
                    if (newValue != null) {
                      setState(() {
                        selectedFrequency = newValue;
                      });
                    }
                  },
                  postalCodeController: _postalCode,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SubmitButton(onPressed: _handleSubmit),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigatorProductoBar(
        currentIndex: 0,
        onTap: (index) {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
