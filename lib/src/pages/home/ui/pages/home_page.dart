import '../../../../core/utils/exports.dart';
import '../widgets/custom_bottom_navigation_bar.dart';
import 'dart:typed_data';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productsProvider);
    final companies = ref.watch(companyNotifierProvider);

    final companyService =
        CompanyService(networkService: DioNetworkService(Dio()));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Tus productos',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: products.isEmpty
                  ? const Center(child: Text('No tienes productos'))
                  : ListView.separated(
                      itemCount: products.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 12),
                      itemBuilder: (context, index) {
                        final product = products[index];
                        final matchingCompanies = companies.where(
                          (c) =>
                              c.name.toLowerCase() ==
                              product.companyName.toLowerCase(),
                        );
                        final company = matchingCompanies.isNotEmpty
                            ? matchingCompanies.first
                            : null;
                        final logoImage = company?.logoImage;
                        return FutureBuilder(
                          future: logoImage != null
                              ? companyService.getCompanyLogo(logoImage)
                              : Future.value(null),
                          builder: (context, snapshot) {
                            Widget logoWidget;
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              logoWidget = const SizedBox(
                                width: 40,
                                height: 40,
                                child: CircularProgressIndicator(),
                              );
                            } else if (snapshot.hasError) {
                              logoWidget = const Icon(Icons.error, size: 40);
                            } else if (snapshot.data == null ||
                                (snapshot.data?.isLeft() ?? true)) {
                              logoWidget = const Icon(Icons.error, size: 40);
                            } else {
                              final either = snapshot.data;
                              final logoData = either?.getOrElse(() => null);
                              if (logoData is List<int>) {
                                logoWidget = SizedBox(
                                  width: 50,
                                  height: 30,
                                  child: Image.memory(
                                    Uint8List.fromList(logoData),
                                    fit: BoxFit.contain,
                                    errorBuilder: (context, error, stackTrace) {
                                      return const Icon(Icons.error, size: 20);
                                    },
                                  ),
                                );
                              } else {
                                logoWidget = const Icon(Icons.error, size: 20);
                              }
                            }

                            return Cards(
                              title: product.productSubtype,
                              subtitle: product.externalName,
                              price: product.price != null
                                  ? '${product.price}€'
                                  : 'N/A',
                              frequency: getPaymentFrequencyText(
                                  product.paymentFrequency),
                              icon: getIconForProduct(product.productSubtype),
                              iconColor: getIconColor(product.productSubtype),
                              insuranceCompany: logoWidget,
                              expiry: product.expiration,
                              // status: getProductStatusText(product.status),
                              productName: product.productName,
                            );
                          },
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FamilyPage()),
              );
              break;
            default:
              // Los demás botones no tienen funcionalidad por ahora
              break;
          }
        },
      ),
    );
  }
}
