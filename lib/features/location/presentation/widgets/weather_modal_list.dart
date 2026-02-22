import 'package:flutter/material.dart';
import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app/shared/widgets/custom_weather_tile.dart';

class WeatherModalList extends StatelessWidget {
  final String tempUnit;
  final WeatherEntity weatherList;
  const WeatherModalList({
    super.key,
    required this.weatherList,
    required this.tempUnit,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: weatherList.forecast.length,
      itemBuilder: (context, index) {
        final day = weatherList.forecast[index];

        return CustomWeatherTile(
          tempUnit: tempUnit,
          day: day,
          currentTemp: weatherList.tempCurrent,
        );
      },
    );
  }
}
