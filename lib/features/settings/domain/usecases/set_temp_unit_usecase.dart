import 'package:weather_app/features/settings/domain/repositories/temp_unit_repository.dart';

abstract class ISetTempUnitUsecase {
  Future<void> call(String unit);
}

class SetTempUnitUsecase implements ISetTempUnitUsecase {
  final TemperatureUnitRepository _repository;

  SetTempUnitUsecase(this._repository);

  @override
  Future<void> call(String unit) => _repository.saveTemperatureUnit(unit);
}
