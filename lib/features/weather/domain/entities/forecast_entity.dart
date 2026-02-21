class ForecastEntity {
  final DateTime date;
  final double tempMax;
  final double tempMin;
  final double precipitationMm;

  const ForecastEntity({
    required this.date,
    required this.tempMax,
    required this.tempMin,
    required this.precipitationMm,
  });
}
