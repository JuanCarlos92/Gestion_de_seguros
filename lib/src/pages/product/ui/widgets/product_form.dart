import 'package:flutter/material.dart';
import '../models/enum/enum_payment_frequency.dart';
import 'date_selector.dart';
import 'payment_frequency.dart';
import 'postal_code.dart';

class ProductForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final DateTime? selectedEndDate;
  final Function(DateTime) onDateSelected;
  final EnumPaymentFrequency selectedFrequency;
  final Function(EnumPaymentFrequency?) onFrequencyChanged;
  final TextEditingController postalCodeController;

  const ProductForm({
    super.key,
    required this.formKey,
    required this.selectedEndDate,
    required this.onDateSelected,
    required this.selectedFrequency,
    required this.onFrequencyChanged,
    required this.postalCodeController,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          DateSelector(
            selectedDate: selectedEndDate,
            onDateSelected: onDateSelected,
          ),
          const SizedBox(height: 16),
          PaymentFrequency(
            selectedFrequency: selectedFrequency,
            onFrequencyChanged: onFrequencyChanged,
          ),
          const SizedBox(height: 16),
          PostalCode(
            controller: postalCodeController,
          ),
        ],
      ),
    );
  }
}
