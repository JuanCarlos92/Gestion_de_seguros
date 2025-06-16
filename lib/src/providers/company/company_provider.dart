import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../models/response/company_response.dart';

part 'company_provider.g.dart';

@Riverpod(keepAlive: true)
class CompanyNotifier extends _$CompanyNotifier {
  @override
  List<CompanyResponse> build() {
    return [];
  }

  void setCompanies(List<CompanyResponse> companies) {
    state = companies;
  }

  void clearCompanies() {
    state = [];
  }
}
