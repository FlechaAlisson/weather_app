import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/settings/domain/usecases/get_temp_unit_usecase.dart';
import 'package:weather_app/features/settings/domain/usecases/set_temp_unit_usecase.dart';
import 'package:weather_app/features/settings/presentation/bloc/settings_event.dart';
import 'package:weather_app/features/settings/presentation/bloc/settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  IGetTempUnitUsecase getTempUnitUsecase;
  ISetTempUnitUsecase setTempUnitUsecase;

  SettingsBloc(this.getTempUnitUsecase, this.setTempUnitUsecase)
    : super(SettingsState()) {
    on<ChangeTempUnit>(_changeTempUnit);
    on<LoadSetting>(_loadTempUni);
    add(LoadSetting());
  }

  Future<void> _loadTempUni(LoadSetting event, Emitter emit) async {
    final unit = await getTempUnitUsecase();
    emit(
      state.copyWith(status: SettingsStateEnum.inital, tempUnit: unit),
    );
  }

  Future<void> _changeTempUnit(
    ChangeTempUnit event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(status: SettingsStateEnum.loading));
    try {
      await setTempUnitUsecase(event.unit);
      emit(
        state.copyWith(
          status: SettingsStateEnum.inital,
          tempUnit: event.unit,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: SettingsStateEnum.error,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
