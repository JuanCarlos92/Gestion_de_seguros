import 'package:biencubierto/src/pages/profile/ui/widgets/profile_avatar.dart';
import 'package:biencubierto/src/pages/profile/ui/widgets/profile_actions.dart';
import 'package:biencubierto/src/pages/profile/ui/widgets/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../providers/auth/client/client_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(clientNotifierProvider);

    if (client == null) {
      return const Scaffold(
        body: Center(
          child: Text('No hay datos del cliente disponibles'),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.go('/home'),
        ),
        title: Image.asset(
          'assets/logo/biencubierto.png',
          height: 40,
        ),
        centerTitle: true,
        elevation: 0,
        // title: const Text(
        //   'Mi perfil',
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontWeight: FontWeight.bold,
        //     fontSize: 26,
        //   ),
        // ),
        // centerTitle: true,
        // elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Avatar(),
            const SizedBox(height: 24),
            ProfileCard(client: client),
            const SizedBox(height: 24),
            ProfileActions(client: client),
          ],
        ),
      ),
    );
  }
}
