import 'package:biencubierto/src/pages/profile/ui/widgets/profile_avatar.dart';
import 'package:biencubierto/src/providers/auth/client/client_provider.dart';
import '../../../../core/utils/exports.dart';
import '../../../../models/response/client_response.dart';
import '../widgets/edit_profile_form.dart';

class EditProfilePage extends ConsumerWidget {
  const EditProfilePage({super.key});

  Future<void> _handleEditProfile(
      BuildContext context, ClientResponse formData) async {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Perfil actualizado exitosamente')),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentClient = ref.watch(clientNotifierProvider);

    if (currentClient == null) {
      return const Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.go('/profile'),
        ),
        title: Image.asset(
          'assets/logo/biencubierto.png',
          height: 40,
        ),
        centerTitle: true,
        elevation: 0,
        // title: const Text(
        //   'Editar Perfil',
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
            Container(
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
              child: EditProfileForm(
                client: currentClient,
                onSubmit: (ClientResponse formData) =>
                    _handleEditProfile(context, formData),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
