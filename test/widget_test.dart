import 'package:biencubierto/src/pages/main/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Login screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that login form elements are present
    expect(find.text('Tranquilidad asegurada'), findsOneWidget);
    expect(find.text('Correo electrónico'), findsOneWidget);
    expect(find.text('Contraseña'), findsOneWidget);
    expect(find.text('Iniciar sesión'), findsOneWidget);
    expect(find.text('¿Olvidaste tu contraseña?'), findsOneWidget);

    // Verify that the logo is present
    expect(find.byType(Image), findsOneWidget);

    // Verify form input fields are present
    expect(find.byType(TextFormField), findsNWidgets(2));
  });
}
