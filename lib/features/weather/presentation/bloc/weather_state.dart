import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';

enum WeatherStateEnum {
  initial,
  loading,
  error,
  weatherLoaded,
}

class WeatherState {
  WeatherStateEnum status;
  String? errorMessage;
  WeatherEntity? weather;
  String tempUnit;

  WeatherState({
    this.status = WeatherStateEnum.initial,
    this.errorMessage,
    this.weather,
    this.tempUnit = 'C',
  });

  WeatherState copyWith({
    WeatherStateEnum? status,
    String? errorMessage,
    WeatherEntity? weather,
    String? tempUnit,
  }) => WeatherState(
    tempUnit: tempUnit ?? this.tempUnit,
    status: status ?? this.status,
    errorMessage: errorMessage ?? this.errorMessage,
    weather: weather ?? this.weather,
  );
}
