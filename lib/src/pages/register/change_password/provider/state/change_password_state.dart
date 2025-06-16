import '../../../../../core/utils/exports.dart';

part 'change_password_state.freezed.dart';

// Clase sellada que representa los diferentes estados del proceso de codigo de registro
// Usa freezed para generar código automáticamente
@freezed
sealed class ChangePasswordState with _$ChangePasswordState {
  // Estado inicial cuando aún no se ha intentado hacer registro
  factory ChangePasswordState.inital() = ChangePasswordInitial;
  // Estado de carga mientras se procesa la petición de registro
  factory ChangePasswordState.loading() = ChangePasswordLoading;
  // Estado de éxito cuando el registro se completa correctamente
  factory ChangePasswordState.success() = ChangePasswordSuccess;
  // Estado de error cuando falla el registro, incluye el mensaje de error
  factory ChangePasswordState.error(Failure failure) = ChangePasswordError;
}
