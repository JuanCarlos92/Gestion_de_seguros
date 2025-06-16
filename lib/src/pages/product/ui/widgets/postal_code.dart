import 'package:flutter/material.dart';

class PostalCode extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  const PostalCode({
    super.key,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Código Postal',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'Introduce el código postal',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.blue, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.blue, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.red.shade400, width: 1.5),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.red.shade400, width: 2),
            ),
          ),
          onChanged: onChanged,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor, introduce el código postal';
            }
            return null;
          },
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

// class PostalCode extends StatelessWidget {
//   final TextEditingController controller;
//   final ValueChanged<String>? onChanged;

//   const PostalCode({
//     super.key,
//     required this.controller,
//     this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Código Postal',
//           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 8),
//         TextFormField(
//           controller: controller,
//           keyboardType: TextInputType.number,
//           decoration: const InputDecoration(
//             hintText: 'Introduce el código postal',
//             border: OutlineInputBorder(),
//           ),
//           onChanged: onChanged,
//           validator: (value) {
//             if (value == null || value.isEmpty) {
//               return 'Por favor, introduce el código postal';
//             }
//             return null;
//           },
//         ),
//       ],
//     );
//   }
// }
