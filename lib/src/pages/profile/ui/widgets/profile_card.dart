import 'package:biencubierto/src/pages/profile/ui/widgets/profile_item.dart';
import 'package:flutter/material.dart';
import '../../../../models/response/client_response.dart';

class ProfileCard extends StatelessWidget {
  final ClientResponse client;

  const ProfileCard({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.blue,
          width: 1,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 1),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${client.name} ${client.lastName}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'roboto',
            ),
          ),
          const SizedBox(height: 10),
          ProfileItem(label: 'DNI', value: client.dni),
          ProfileItem(label: 'Fecha de nacimiento', value: client.birthDate),
          ProfileItem(label: 'Teléfono', value: client.phone),
          ProfileItem(label: 'Correo electrónico', value: client.email),
          ProfileItem(label: 'Código postal', value: client.postalCode),
        ],
      ),
    );
  }
}
