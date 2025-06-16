import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/response/product_response.dart';

final productsProvider = StateProvider<List<ProductResponse>>((ref) => []);
