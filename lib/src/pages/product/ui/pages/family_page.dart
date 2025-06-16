import '../../../../core/utils/exports.dart';
import '../../constants/family_constants.dart';
import '../widgets/title_header.dart';
import '../widgets/family/selection_message.dart';

class FamilyPage extends StatefulWidget {
  const FamilyPage({super.key});

  @override
  State<FamilyPage> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<FamilyPage> {
  int? selectedFamilyId;

  void _onFamilySelected(int id) {
    setState(() {
      selectedFamilyId = id;
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CompanyPage(
          familiaId: id,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ProductBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleHeader(title: 'SEGUROS'),
            const SizedBox(height: 20),
            Expanded(
              child: WidgetsOption(
                options: FamilyConstants.familias,
                onTap: _onFamilySelected,
              ),
            ),
            SelectionMessage(selectedId: selectedFamilyId),
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
