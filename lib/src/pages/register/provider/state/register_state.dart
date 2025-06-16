import '../../../../core/utils/exports.dart';

part 'register_state.freezed.dart';

// Clase sellada que representa los diferentes estados del proceso de registro
// Usa freezed para generar código automáticamente
@freezed
sealed class RegisterState with _$RegisterState {
  // Estado inicial cuando aún no se ha intentado hacer registro
  factory RegisterState.inital() = RegisterInitial;
  // Estado de carga mientras se procesa la petición de registro
  factory RegisterState.loading() = RegisterLoading;
  // Estado de éxito cuando el registro se completa correctamente
  factory RegisterState.success() = RegisterSuccess;
  // Estado de error cuando falla el registro, incluye el mensaje de error
  factory RegisterState.error(Failure failure) = RegisterError;
}
