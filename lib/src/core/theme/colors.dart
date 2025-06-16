import '../../core/utils/exports.dart';

final ThemeData biencubiertoTheme = ThemeData(
  fontFamily: 'Roboto',
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF409EFF),
    primary: const Color(0xFF409EFF),
    secondary: const Color(0xFF2B7CC0),
    // ignore: deprecated_member_use
    background: const Color(0xFFFFFFFF),
    surface: const Color(0xFFF7F8FA),
    onPrimary: Colors.white,
    // ignore: deprecated_member_use
    onBackground: const Color(0xFF1A1A1A),
    onSurface: const Color(0xFF606060),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1A1A1A)),
    titleMedium: TextStyle(
        fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF1A1A1A)),
    bodyLarge: TextStyle(
        fontSize: 14, fontWeight: FontWeight.normal, color: Color(0xFF1A1A1A)),
    bodyMedium: TextStyle(
        fontSize: 12, fontWeight: FontWeight.normal, color: Color(0xFF606060)),
    labelLarge: TextStyle(
        fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
  ),
);
