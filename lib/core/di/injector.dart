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
import 'package:weather_app/features/settings/data/datasource/temp_unit_datasource.dart';
import 'package:weather_app/features/settings/data/repositories/temp_unit_repo_imp.dart';
import 'package:weather_app/features/settings/domain/repositories/temp_unit_repository.dart';
import 'package:weather_app/features/settings/domain/usecases/get_temp_unit_usecase.dart';
import 'package:weather_app/features/settings/domain/usecases/set_temp_unit_usecase.dart';
import 'package:weather_app/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:weather_app/features/weather/data/datasourse/weather_datasourse.dart';
import 'package:weather_app/features/weather/data/repositories/weather_repo_impl.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repository.dart';
import 'package:weather_app/features/weather/domain/usecase/get_weather_current_location.dart';
import 'package:weather_app/features/weather/presentation/bloc/weather_bloc.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  // settings

  getIt.registerSingleton<TemperatureUnitDatasource>(
    TemperatureUnitDatasource(),
  );

  getIt.registerSingleton<TemperatureUnitRepository>(
    TemperatureUnitRepositoryImp(getIt<TemperatureUnitDatasource>()),
  );

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

  getIt.registerLazySingleton<IGetTempUnitUsecase>(
    () => GetTempUnitUsecase(getIt<TemperatureUnitRepository>()),
  );

  getIt.registerLazySingleton<ISetTempUnitUsecase>(
    () => SetTempUnitUsecase(getIt<TemperatureUnitRepository>()),
  );

  //blocs
  getIt.registerFactory<WeatherBloc>(
    () => WeatherBloc(
      getIt<IGetWeatherCurrentLocationUseCase>(),
      getIt<IGetTempUnitUsecase>(),
    ),
  );

  getIt.registerFactory<LocationBloc>(
    () => LocationBloc(
      getIt<IGetCurrentLocationUseCase>(),
      getIt<IFetchAddressUseCase>(),
      getIt<IGetWeatherFromLocationUseCase>(),
      getIt<IGetTempUnitUsecase>(),
    ),
  );

  getIt.registerFactory(
    () => SettingsBloc(
      getIt<IGetTempUnitUsecase>(),
      getIt<ISetTempUnitUsecase>(),
    ),
  );
}
