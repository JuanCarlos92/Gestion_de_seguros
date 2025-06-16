import 'package:flutter/material.dart';

class WidgetsOption extends StatefulWidget {
  final List<Map<String, dynamic>> options;
  final void Function(int id) onTap;

  const WidgetsOption({
    super.key,
    required this.options,
    required this.onTap,
  });

  @override
  State<WidgetsOption> createState() => _WidgetsOptionState();
}

class _WidgetsOptionState extends State<WidgetsOption> {
  int? selectedId;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.options.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final option = widget.options[index];
        return CheckboxListTile(
          value: selectedId == option['id'],
          onChanged: (checked) {
            setState(() {
              selectedId = option['id'];
            });
            widget.onTap(option['id']);
          },
          title: Text(
            option['nombre'],
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: Colors.blue,
          tileColor: Colors.blue.shade50,
        );
      },
    );
  }
}
