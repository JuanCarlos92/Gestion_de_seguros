import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        radius: 60,
        child: Icon(
          Icons.person,
          color: Colors.blue,
        ),
      ),
    );
  }
}
