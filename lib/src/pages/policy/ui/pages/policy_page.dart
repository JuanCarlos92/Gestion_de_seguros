import '../../../../core/utils/exports.dart';

class PolicyPage extends ConsumerWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(),
        body: Padding(
            padding: EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 24),
              Text('Políticas de privacidad',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ))
            ])));
  }
}
