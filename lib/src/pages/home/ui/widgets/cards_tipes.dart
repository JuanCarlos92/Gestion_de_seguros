import 'package:flutter/material.dart';

IconData getIconForProduct(String productType) {
  switch (productType.toLowerCase()) {
    case 'auto':
      return Icons.directions_car;
    case 'salud':
      return Icons.favorite;
    default:
      return Icons.policy;
  }
}

Color getIconColor(String productType) {
  switch (productType.toLowerCase()) {
    case 'auto':
      return Colors.blue;
    case 'salud':
      return Colors.red;
    default:
      return Colors.grey;
  }
}

String getPaymentFrequencyText(int? frequency) {
  switch (frequency) {
    case 1:
      return 'Mensual';
    case 2:
      return 'Trimestral';
    case 3:
      return 'Semestral';
    case 4:
      return 'Anual';
    case 5:
      return 'Bimestral';
    default:
      return 'Desconocido';
  }
}

String getProductStatusText(int? status) {
  switch (status) {
    case 0:
      return 'Incompleto';
    case 1:
      return 'En revisión';
    case 2:
      return 'Aprobado';
    case 3:
      return 'Rechazado';
    case 5:
      return 'Cancelado';
    case 6:
      return 'Producto externo';
    default:
      return 'En proceso';
  }
}