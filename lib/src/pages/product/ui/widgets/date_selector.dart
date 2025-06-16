import 'package:flutter/material.dart';

class DateSelector extends StatelessWidget {
  final DateTime? selectedDate;
  final Function(DateTime) onDateSelected;

  const DateSelector({
    super.key,
    required this.selectedDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Fecha de Finalización del seguro actual',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () async {
            final BuildContext currentContext = context;
            final now = DateTime.now();
            final DateTime? picked = await showDatePicker(
              context: currentContext,
              initialDate: selectedDate ?? now,
              firstDate: now,
              lastDate: DateTime(2100),
              locale: const Locale('es', 'ES'),
            );
            if (picked != null) {
              final selectedDateTime = DateTime(
                picked.year,
                picked.month,
                picked.day,
                12,
              );
              onDateSelected(selectedDateTime);
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 1.5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedDate != null
                      ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                      : 'Seleccione una fecha',
                  style: TextStyle(
                    color: selectedDate != null ? Colors.black : Colors.black54,
                  ),
                ),
                const Icon(Icons.calendar_today, color: Colors.blue),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
