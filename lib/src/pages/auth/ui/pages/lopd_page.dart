import '../../../../core/success/success_utils.dart';
import '../../../../core/utils/exports.dart';
import '../../../../core/services/lopd_service.dart';

class LOPDPage extends StatelessWidget {
  final String clientHash;
  final String tokenLopd;

  const LOPDPage({
    super.key,
    required this.clientHash,
    required this.tokenLopd,
  });

  Future<void> _handleAcceptLOPD(BuildContext context) async {
    final lopdService = LOPDService(
      networkService: DioNetworkService(Dio()),
    );

    final result = await lopdService.acceptLOPD(
      Lopd(
        accepted: true,
        token: tokenLopd,
      ),
      clientHash,
      tokenLopd,
    );

    result.fold(
      (failure) => ErrorUtils.handleGenericError(context, failure),
      (_) {
        SuccessUtils.manejarExitoLogin(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Términos y Condiciones'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Expanded(
              child: SingleChildScrollView(
                child: Text(
                  'Aquí van los términos y condiciones...',
                  // Reemplazar con el texto real de los términos
                ),
              ),
            ),
            Button(
              text: 'Aceptar Términos y Condiciones',
              onPressed: () => _handleAcceptLOPD(context),
            ),
          ],
        ),
      ),
    );
  }
}
