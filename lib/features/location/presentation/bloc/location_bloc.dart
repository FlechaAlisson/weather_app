import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/features/location/domain/entities/address.dart';
import 'package:weather_app/features/location/domain/usecase/fetch_address.dart';
import 'package:weather_app/features/location/domain/usecase/get_current_location.dart';
import 'package:weather_app/features/location/domain/usecase/get_weather_from_location.dart';
import 'package:weather_app/features/location/presentation/bloc/location_event.dart';
import 'package:weather_app/features/location/presentation/bloc/location_state.dart';
import 'package:weather_app/features/settings/domain/usecases/get_temp_unit_usecase.dart';
import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final IGetCurrentLocationUseCase _currentLocationUseCase;
  final IFetchAddressUseCase _fetchAddressUseCase;
  final IGetWeatherFromLocationUseCase _getWeatherFromLocationUseCase;
  final IGetTempUnitUsecase _getTempUnit;

  LocationBloc(
    this._currentLocationUseCase,
    this._fetchAddressUseCase,
    this._getWeatherFromLocationUseCase,
    this._getTempUnit,
  ) : super(LocationState()) {
    on<FetchLocation>(_onFetchLocation);
    on<ChangeLocation>(_onChangeLocation);
    on<CheckWeatherFromLocation>(_checkWeatherFromLocation);
    on<SearchAddress>(
      _onSearchAddress,
      transformer: debounceTransformer(Duration(seconds: 1)),
    );
  }

  Future<void> _checkWeatherFromLocation(
    CheckWeatherFromLocation event,
    Emitter<LocationState> emit,
  ) async {
    emit(state.copyWith(isWeatherLoading: true));
    try {
      String tempUnit = await _getTempUnit();
      WeatherEntity weatherLoaded = await _getWeatherFromLocationUseCase(
        event.lat,
        event.long,
        tempUnit,
      );
      emit(
        state.copyWith(
          isWeatherLoading: false,
          weatherEntity: weatherLoaded,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isWeatherLoading: false,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onFetchLocation(
    FetchLocation event,
    Emitter<LocationState> emit,
  ) async {
    emit(state.copyWith(status: LocationStateEnum.loading));
    try {
      final Position location = await _currentLocationUseCase();
      emit(
        state.copyWith(
          status: LocationStateEnum.locationLoaded,
          currentLocation: location,
          errorMessage: null,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: LocationStateEnum.error,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onChangeLocation(
    ChangeLocation event,
    Emitter<LocationState> emit,
  ) async {
    emit(state.copyWith(status: LocationStateEnum.loading));
    try {
      final Position location = Position(
        latitude: event.lat,
        longitude: event.long,
        timestamp: DateTime.now(),
        accuracy: 0,
        altitude: 0,
        altitudeAccuracy: 0,
        heading: 0,
        headingAccuracy: 0,
        speed: 0,
        speedAccuracy: 0,
      );
      emit(
        state.copyWith(
          status: LocationStateEnum.locationLoaded,
          newLocation: location,
          addressList: [],
          errorMessage: null,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: LocationStateEnum.error,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onSearchAddress(
    SearchAddress event,
    Emitter<LocationState> emit,
  ) async {
    if (event.query.isEmpty) return;
    emit(state.copyWith(isLoadingAddress: true));
    try {
      List<AddressEntity> addresList = await _fetchAddressUseCase(
        event.query,
      );

      emit(
        state.copyWith(
          status: LocationStateEnum.locationLoaded,
          addressList: addresList,
          isLoadingAddress: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: LocationStateEnum.error,
          isLoadingAddress: false,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  EventTransformer<E> debounceTransformer<E>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
