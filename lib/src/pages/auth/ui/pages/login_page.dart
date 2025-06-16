// ignore_for_file: use_build_context_synchronously

import '../../../../providers/auth/client/client_provider.dart';
import '../../../../providers/auth/token/token_provider.dart';
import '../../../../core/utils/exports.dart';
import 'dart:developer' as developer;

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  Future<void> _handleLogin(
      BuildContext context, LoginData formdata, WidgetRef ref) async {
    final authService = AuthServices(
      networkService: DioNetworkService(Dio()),
    );

    final result = await authService.login(
      Login(
        username: formdata.username,
        password: formdata.password,
      ),
    );

    result.fold(
      (failure) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(failure.message)),
        );
      },
      (data) async {
        //------TOKEN-------
        final loginResponse = LoginResponse.fromJson(data);
        // Guardamos el token en el provider
        ref
            .read(authTokenNotifierProvider.notifier)
            .setToken(loginResponse.token);

        //------CLIENTE-------
        // Guardamos el cliente completo
        ref
            .read(clientNotifierProvider.notifier)
            .setClient(loginResponse.client);

        // //------CLIENTE-------
        // // Guardamos el ID del cliente
        // final clientId = int.tryParse(loginResponse.client.clientId);
        // if (clientId != null) {
        //   ref.read(clientNotifierProvider.notifier).setClientId(clientId);
        // }

        //------PRODUCTOS-------
        // Guardamos los productos en el provider
        ref.read(productsProvider.notifier).state =
            loginResponse.client.products;

        //Obtenemos la lista de compañias
        final companyService = CompanyService(
          networkService: DioNetworkService(Dio()),
        );
        final companiesResult = await companyService.getCompanies();

        companiesResult.fold(
          (failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content:
                      Text('Error al cargar compañías: ${failure.message}')),
            );
          },
          (companies) {
            ref.read(companyNotifierProvider.notifier).setCompanies(companies);

            for (final product in loginResponse.client.products) {
              try {
                final matchingCompany = companies.firstWhere(
                  (company) =>
                      company.name.toLowerCase() ==
                      product.companyName.toLowerCase(),
                );

                developer.log(
                    'Compañía encontrada: ${matchingCompany.id} - ${matchingCompany.name}');
              } catch (e) {
                developer.log(
                    'No se encontró la compañía para: ${product.companyName}');
              }
            }
          },
        );

        if (loginResponse.client.lopdAccepted) {
          context.go('/home');
        } else {
          context.go('/lopd', extra: {
            'clientHash': loginResponse.client.hash,
            'tokenLopd': loginResponse.token,
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(height: 60),
                Image.asset(
                  'assets/logo/biencubierto.png',
                  height: 120,
                ),
                const SizedBox(height: 16),
                LoginForm(
                  onSubmit: (LoginData formdata) =>
                      _handleLogin(context, formdata, ref),
                ),
                const SizedBox(height: 24),
                TextButton(
                  onPressed: () => context.go('/recoverPassword'),
                  child: const Text(
                    '¿Olvidaste tu contraseña?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => context.go('/register'),
                  child: const Text(
                    '¿No tienes cuenta? Regístrate',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
