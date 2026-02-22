import 'package:weather_app/features/settings/data/datasource/temp_unit_datasource.dart';
import 'package:weather_app/features/settings/domain/repositories/temp_unit_repository.dart';

class TemperatureUnitRepositoryImp implements TemperatureUnitRepository {
  final TemperatureUnitDatasource _local;

  TemperatureUnitRepositoryImp(this._local);

  @override
  Future<String> getTemperatureUnit() {
    return _local.getTemperatureUnit();
  }

  @override
  Future<void> saveTemperatureUnit(String unit) {
    return _local.saveTemperatureUnit(unit);
  }
}
