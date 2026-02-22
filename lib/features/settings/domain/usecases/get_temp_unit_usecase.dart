import 'package:weather_app/features/settings/domain/repositories/temp_unit_repository.dart';

abstract class IGetTempUnitUsecase {
  Future<String> call();
}

class GetTempUnitUsecase implements IGetTempUnitUsecase {
  final TemperatureUnitRepository _repository;

  GetTempUnitUsecase(this._repository);

  @override
  Future<String> call() => _repository.getTemperatureUnit();
}
