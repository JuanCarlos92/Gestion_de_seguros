import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String frequency;
  final IconData icon;
  final Color iconColor;
  final Widget insuranceCompany;
  final String expiry;
  // final String status;
  final String productName;

  const Cards({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.frequency,
    required this.icon,
    required this.iconColor,
    required this.insuranceCompany,
    required this.expiry,
    // required this.status,
    required this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.blue, width: 1.5),
      ),
      elevation: 3,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.5),
                topRight: Radius.circular(10.5),
              ),
            ),
            child: Center(
              // Agregado widget Center
              child: Text(
                productName,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(subtitle,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Icon(icon, color: iconColor),
                    const SizedBox(width: 8),
                    Text(title,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const Spacer(),
                    Text(frequency,
                        style: const TextStyle(color: Colors.black54)),
                    const SizedBox(width: 10),
                    Text(price,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: insuranceCompany,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Vencimiento: $expiry',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                // const SizedBox(height: 8),
                // Text(
                //   status,
                //   style: const TextStyle(
                //     fontSize: 13,
                //     color: Colors.black87,
                //     fontWeight: FontWeight.w500,
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
