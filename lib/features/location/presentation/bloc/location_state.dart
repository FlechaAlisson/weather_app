import 'package:geolocator/geolocator.dart';
import 'package:weather_app/features/location/domain/entities/address.dart';
import 'package:weather_app/features/weather/domain/entities/weather_entity.dart';

enum LocationStateEnum {
  intial,
  loading,
  error,
  locationLoaded,
}

class LocationState {
  LocationStateEnum status;
  String? errorMessage;
  Position? currentLocation;
  Position? newLocation;
  List<AddressEntity> addressList;
  bool isLoadingAddress;
  bool isWeatherLoading;
  WeatherEntity? weatherEntity;
  String tempUnit;
  bool showModal;

  LocationState({
    this.status = LocationStateEnum.intial,
    this.errorMessage,
    this.currentLocation,
    this.newLocation,
    this.isLoadingAddress = false,
    this.isWeatherLoading = false,
    this.addressList = const [],
    this.weatherEntity,
    this.tempUnit = 'C',
    this.showModal = false,
  });

  LocationState copyWith({
    LocationStateEnum? status,
    String? errorMessage,
    Position? currentLocation,
    Position? newLocation,
    List<AddressEntity>? addressList,
    bool? isLoadingAddress,
    WeatherEntity? weatherEntity,
    bool? isWeatherLoading,
    String? tempUnit,
    bool? showModal,
  }) => LocationState(
    status: status ?? this.status,
    errorMessage: errorMessage ?? this.errorMessage,
    newLocation: newLocation ?? this.newLocation,
    isLoadingAddress: isLoadingAddress ?? this.isLoadingAddress,
    currentLocation: currentLocation ?? this.currentLocation,
    addressList: addressList ?? this.addressList,
    weatherEntity: weatherEntity ?? this.weatherEntity,
    isWeatherLoading: isWeatherLoading ?? this.isWeatherLoading,
    tempUnit: tempUnit ?? this.tempUnit,
    showModal: showModal ?? this.showModal,
  );
}
