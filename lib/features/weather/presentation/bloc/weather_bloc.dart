import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/settings/domain/usecases/get_temp_unit_usecase.dart';
import 'package:weather_app/features/weather/domain/usecase/get_weather_current_location.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_event.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IGetWeatherCurrentLocationUseCase _getWeatherCurrentLocation;
  final IGetTempUnitUsecase _getTempUnit;

  WeatherBloc(this._getWeatherCurrentLocation, this._getTempUnit)
    : super(WeatherState()) {
    on<LoadWeather>(_loadWeather);
  }

  Future<void> _loadWeather(
    LoadWeather event,
    Emitter<WeatherState> emit,
  ) async {
    emit(state.copyWith(status: WeatherStateEnum.initial));
    try {
      final unit = await _getTempUnit();
      final weather = await _getWeatherCurrentLocation(unit);
      emit(
        state.copyWith(
          tempUnit: unit,
          status: WeatherStateEnum.weatherLoaded,
          weather: weather,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: WeatherStateEnum.error,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
