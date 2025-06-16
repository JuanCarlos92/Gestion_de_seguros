import 'package:go_router/go_router.dart';
import '../pages/auth/ui/pages/login_page.dart';
import '../core/utils/exports.dart';
import '../pages/auth/ui/pages/lopd_page.dart';
import '../pages/policy/ui/pages/policy_page.dart';
import '../pages/profile/change_password_profile/pages/change_pwd_profile_page.dart';
import '../pages/profile/edit_profile/pages/edit_profile_page.dart';
import '../pages/profile/ui/pages/profile_page.dart';
import '../pages/reset_password/ui/pages/reset_password_page.dart';
import '../pages/register/ui/pages/register_page.dart';
import '../pages/home/ui/pages/home_page.dart';
import '../pages/register/change_password/ui/pages/change_password_page.dart';

// Configuración del enrutador de la aplicación usando go_router
final router = GoRouter(
  // Ruta inicial cuando se abre la aplicación
  initialLocation: '/login',

  routes: [
    // Ruta para la página de inicio de sesión
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    // Ruta para la página principal
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      // Ruta para la página de registro
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      // Ruta para la página de cambiar contraseña
      path: '/changePassword',
      builder: (context, state) => ChangePasswordPage(
        email: state.extra as String,
      ),
    ),
    GoRoute(
      // Ruta para la página de cambiar contraseña
      path: '/changePwdPerfil',
      builder: (context, state) => ChangePwdProfilePage(
        email: state.extra as String,
      ),
    ),
    GoRoute(
      // Ruta para la página de recuperar contraseña
      path: '/recoverPassword',
      builder: (context, state) => const ResetPasswordPage(),
    ),
    GoRoute(
      path: '/lopd',
      builder: (context, state) {
        final Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
        return LOPDPage(
          clientHash: extra['clientHash'] as String,
          tokenLopd: extra['tokenLopd'] as String,
        );
      },
    ),
    GoRoute(
      path: '/polizas',
      builder: (context, state) => const PolicyPage(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfilePage(),
    ),
    GoRoute(
        path: '/editProfile',
        builder: (context, state) => const EditProfilePage()),
  ],
);
