enum EnumPaymentFrequency {
  mensual(1, 'Mensual'),
  trimestral(2, 'Trimestral'),
  semestral(3, 'Semestral'),
  anual(4, 'Anual'),
  bimestral(5, 'Bimestral');

  final int value;
  final String label;
  const EnumPaymentFrequency(this.value, this.label);

  static EnumPaymentFrequency fromValue(int value) {
    return EnumPaymentFrequency.values.firstWhere(
      (frequency) => frequency.value == value,
      orElse: () => EnumPaymentFrequency.mensual,
    );
  }
}
