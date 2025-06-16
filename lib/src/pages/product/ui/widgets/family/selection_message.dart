import 'package:flutter/material.dart';

class SelectionMessage extends StatelessWidget {
  final int? selectedId;
  final String prefix;

  const SelectionMessage({
    super.key,
    required this.selectedId,
    this.prefix = 'Familia seleccionada:',
  });

  @override
  Widget build(BuildContext context) {
    if (selectedId == null) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Text(
        '$prefix $selectedId',
        style: const TextStyle(fontSize: 16, color: Colors.blue),
      ),
    );
  }
}
