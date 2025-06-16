import '../../../../core/utils/exports.dart';
part 'login_state.freezed.dart';

// Clase sellada que representa los diferentes estados del proceso de login
// Usa freezed para generar código automáticamente
@freezed
sealed class LoginState with _$LoginState {
  // Estado inicial cuando aún no se ha intentado hacer login
  factory LoginState.inital() = LoginInitial;
  // Estado de carga mientras se procesa la petición de login
  factory LoginState.loading() = LoginLoading;
  // Estado de éxito cuando el login se completa correctamente
  factory LoginState.success() = LoginSuccess;
  // Estado de error cuando falla el login, incluye el mensaje de error
  factory LoginState.error(Failure failure) = LoginError;
}
