import '../../../../core/utils/exports.dart';

part 'reset_password_state.freezed.dart';

// Clase sellada que representa los diferentes estados del proceso de codigo de reset password
// Usa freezed para generar código automáticamente
@freezed
sealed class ResetPasswordState with _$ResetPasswordState {
  // Estado inicial cuando aún no se ha intentado hacer reset password
  factory ResetPasswordState.inital() = ResetPasswordInitial;
  // Estado de carga mientras se procesa la petición de reset password
  factory ResetPasswordState.loading() = ResetPasswordLoading;
  // Estado de éxito cuando el reset password se completa correctamente
  factory ResetPasswordState.success() = ResetPasswordSuccess;
  // Estado de error cuando falla el reset password, incluye el mensaje de error
  factory ResetPasswordState.error(Failure failure) = ResetPasswordError;
}
