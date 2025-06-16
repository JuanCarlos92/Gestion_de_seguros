import '../../../../core/utils/exports.dart';
import '../widgets/title_header.dart';

class CompanyPage extends ConsumerWidget {
  final int familiaId;

  const CompanyPage({
    super.key,
    required this.familiaId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final companies = ref.watch(companyNotifierProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ProductBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleHeader(title: 'COMPAÑIAS'),
            const SizedBox(height: 20),
            Expanded(
              child: companies.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : WidgetsOption(
                      options: companies
                          .map((c) => {
                                'id': c.id,
                                'nombre': c.name,
                                'logoImage': c.logoImage,
                              })
                          .toList(),
                      onTap: (companyId) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => FormPage(
                              familiaId: familiaId,
                              companyId: companyId,
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigatorProductoBar(
        currentIndex: 0,
        onTap: (index) {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
