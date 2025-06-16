import '../../../../core/utils/exports.dart';
part 'product_state.freezed.dart';

// Clase sellada que representa los diferentes estados del proceso de productos
// Usa freezed para generar código automáticamente
@freezed
sealed class ProductState with _$ProductState {
  // Estado inicial cuando aún no se ha intentado crear el producto
  factory ProductState.inital() = ProductInitial;
  // Estado de carga mientras se procesa la petición de creación
  factory ProductState.loading() = ProductLoading;
  // Estado de éxito cuando la creación se completa correctamente
  factory ProductState.success() = ProductSuccess;
  // Estado de error cuando falla la creación, incluye el mensaje de error
  factory ProductState.error(Failure failure) = ProductError;
}
