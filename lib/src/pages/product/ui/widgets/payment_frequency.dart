import 'package:flutter/material.dart';
import '../models/enum/enum_payment_frequency.dart';

class PaymentFrequency extends StatelessWidget {
  final EnumPaymentFrequency selectedFrequency;
  final ValueChanged<EnumPaymentFrequency?> onFrequencyChanged;

  const PaymentFrequency({
    super.key,
    required this.selectedFrequency,
    required this.onFrequencyChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Frecuencia de Pago',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 1.5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButton<EnumPaymentFrequency>(
            value: selectedFrequency,
            isExpanded: true,
            underline: Container(), // Elimina la línea inferior por defecto
            icon: const Icon(Icons.arrow_drop_down, color: Colors.blue),
            items: EnumPaymentFrequency.values.map((frequency) {
              return DropdownMenuItem(
                value: frequency,
                child: Text(frequency.label),
              );
            }).toList(),
            onChanged: onFrequencyChanged,
          ),
        ),
      ],
    );
  }
}
