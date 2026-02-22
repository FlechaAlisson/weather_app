abstract class TemperatureUnitRepository {
  Future<String> getTemperatureUnit();
  Future<void> saveTemperatureUnit(String unit);
}
