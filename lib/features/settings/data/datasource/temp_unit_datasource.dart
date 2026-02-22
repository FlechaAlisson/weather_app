import 'package:shared_preferences/shared_preferences.dart';

class TemperatureUnitDatasource {
  TemperatureUnitDatasource();

  static const _key = 'unidade_temp';

  Future<String> getTemperatureUnit() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_key) ?? 'C';
  }

  Future<void> saveTemperatureUnit(String unit) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, unit);
  }
}
