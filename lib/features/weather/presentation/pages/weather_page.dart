// features/weather/presentation/pages/weather_home_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/di/injector.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_event.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_state.dart';
import 'package:weather_app/shared/widgets/custom_weather_tile.dart';
import '../bloc/weather_bloc.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<WeatherBloc>()..add(const FetchByLocation()),
      child: const _WeatherView(),
    );
  }
}

class _WeatherView extends StatelessWidget {
  const _WeatherView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () =>
                context.read<WeatherBloc>().add(const FetchByLocation()),
          ),
        ],
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          return switch (state.status) {
            WeatherStateEnum.initial => const Center(
              child: CircularProgressIndicator(),
            ),
            WeatherStateEnum.loading => const Center(
              child: CircularProgressIndicator(),
            ),
            WeatherStateEnum.weatherLoaded => ListView.builder(
              itemCount: state.weather?.forecast.length,
              itemBuilder: (context, index) {
                final day = state.weather?.forecast[index];

                return CustomWeatherTile(
                  day: day!,
                  currentTemp: state.weather?.tempCurrent ?? 0,
                );
              },
            ),
            WeatherStateEnum.error => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.red),
                  const SizedBox(height: 8),
                  Text(state.errorMessage ?? '', textAlign: TextAlign.center),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.read<WeatherBloc>().add(
                      const FetchByLocation(),
                    ),
                    child: const Text('Try again'),
                  ),
                ],
              ),
            ),
          };
        },
      ),
    );
  }
}
