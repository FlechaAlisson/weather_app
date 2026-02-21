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

  WeatherState({
    this.status = WeatherStateEnum.initial,
    this.errorMessage,
    this.weather,
  });

  WeatherState copyWith({
    WeatherStateEnum? status,
    String? errorMessage,
    WeatherEntity? weather,
  }) => WeatherState(
    status: status ?? this.status,
    errorMessage: errorMessage ?? this.errorMessage,
    weather: weather ?? this.weather,
  );
}
