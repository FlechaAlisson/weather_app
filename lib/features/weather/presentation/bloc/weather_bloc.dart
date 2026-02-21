import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/weather/domain/usecase/get_weather_current_location.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_event.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IGetWeatherCurrentLocationUseCase _getWeatherCurrentLocation;

  WeatherBloc(this._getWeatherCurrentLocation) : super(WeatherState()) {
    on<FetchByLocation>(_onFetchByLocation);
  }

  Future<void> _onFetchByLocation(
    FetchByLocation event,
    Emitter<WeatherState> emit,
  ) async {
    emit(state.copyWith(status: WeatherStateEnum.initial));
    try {
      final weather = await _getWeatherCurrentLocation();
      emit(
        state.copyWith(
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
