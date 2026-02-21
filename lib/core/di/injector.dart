import 'package:get_it/get_it.dart';
import 'package:weather_app/core/dio/geo_dio_client.dart';
import 'package:weather_app/core/dio/weather_dio_client.dart';
import 'package:weather_app/features/location/data/datasourse/geolocation_datasource.dart';
import 'package:weather_app/features/location/data/datasourse/location_datasourse.dart';
import 'package:weather_app/features/location/data/repositories/location_repo_impl.dart';
import 'package:weather_app/features/location/domain/repositories/location_repository.dart';
import 'package:weather_app/features/location/domain/usecase/fetch_address.dart';
import 'package:weather_app/features/location/domain/usecase/get_current_location.dart';
import 'package:weather_app/features/location/domain/usecase/get_weather_from_location.dart';
import 'package:weather_app/features/location/presentation/bloc/location_bloc.dart';
import 'package:weather_app/features/weather/data/datasourse/weather_datasourse.dart';
import 'package:weather_app/features/weather/data/repositories/weather_repo_impl.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repository.dart';
import 'package:weather_app/features/weather/domain/usecase/get_weather_current_location.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_bloc.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  getIt.registerSingleton<WeatherDioClient>(WeatherDioClient());
  getIt.registerSingleton<GeoDioClient>(GeoDioClient());

  // location
  getIt.registerSingleton<LocationDatasource>(LocationDatasource());
  getIt.registerSingleton<GeolocationDatasource>(
    GeolocationDatasource(getIt<GeoDioClient>()),
  );

  getIt.registerSingleton<LocationRepository>(
    LocationRepoImpl(
      getIt<LocationDatasource>(),
      getIt<GeolocationDatasource>(),
    ),
  );

  // weather
  getIt.registerSingleton<WeatherDatasource>(
    WeatherDatasource(getIt<WeatherDioClient>()),
  );

  getIt.registerSingleton<WeatherRepository>(
    WeatherRepositoryImpl(
      getIt<WeatherDatasource>(),
    ),
  );

  //usecases
  getIt.registerLazySingleton<IGetWeatherCurrentLocationUseCase>(
    () => GetWeatherCurrentLocationUseCase(
      getIt<WeatherRepository>(),
      getIt<LocationRepository>(),
    ),
  );

  getIt.registerLazySingleton<IGetCurrentLocationUseCase>(
    () => GetCurrentLocationUseCase(getIt<LocationRepository>()),
  );

  getIt.registerLazySingleton<IGetWeatherFromLocationUseCase>(
    () => GetWeatherFromLocation(getIt<WeatherRepository>()),
  );

  getIt.registerLazySingleton<IFetchAddressUseCase>(
    () => FetchAddressUseCase(getIt<LocationRepository>()),
  );

  //blocs
  getIt.registerFactory<WeatherBloc>(
    () => WeatherBloc(getIt<IGetWeatherCurrentLocationUseCase>()),
  );

  getIt.registerFactory<LocationBloc>(
    () => LocationBloc(
      getIt<IGetCurrentLocationUseCase>(),
      getIt<IFetchAddressUseCase>(),
      getIt<IGetWeatherFromLocationUseCase>(),
    ),
  );
}
