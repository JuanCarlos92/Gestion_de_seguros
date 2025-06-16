import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Clase observadora para monitorear los cambios en los providers de Riverpod
class Observers extends ProviderObserver {
  // Se ejecuta cuando un provider actualiza su valor
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    // Registra en el log el nombre del provider y su nuevo valor
    log(''' 
    {
      "provider": "${provider.name ?? provider.runtimeType}",
      "newValue": "$newValue"
    }''');
  }

  // Se ejecuta cuando un provider es eliminado
  @override
  void didDisposeProvider(
    ProviderBase provider,
    ProviderContainer container,
  ) {
    // Registra en el log que el provider ha sido eliminado
    log('''

  {
    "provider": "${provider.name ?? provider.runtimeType}",
    "newValue":"disposed"
  }''');
    super.didDisposeProvider(provider, container);
  }
}
