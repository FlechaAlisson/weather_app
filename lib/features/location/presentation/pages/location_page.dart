import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:weather_app/core/app_theme.dart';
import 'package:weather_app/core/di/injector.dart';
import 'package:weather_app/features/location/presentation/bloc/location_bloc.dart';
import 'package:weather_app/features/location/presentation/bloc/location_event.dart';
import 'package:weather_app/features/location/presentation/bloc/location_state.dart';
import 'package:weather_app/features/location/presentation/widgets/weather_modal_list.dart';
import 'package:weather_app/shared/widgets/custom_button.dart';
import 'package:weather_app/shared/widgets/custom_modal.dart';
import 'package:weather_app/shared/widgets/custom_textfield.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final MapController _mapController = MapController();
  final TextEditingController _searchTextController = TextEditingController();
  LatLng? _center;

  @override
  void dispose() {
    _searchTextController.dispose();
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LocationBloc>()..add(FetchLocation()),
      child: Scaffold(
        body: BlocConsumer<LocationBloc, LocationState>(
          listener: (context, state) {
            if (state.showModal) {
              showCustomAppModal(
                context: context,
                title: 'Forecast for this location',
                primaryLabel: 'Close',
                content: WeatherModalList(
                  weatherList: state.weatherEntity!,
                ),
              );
              context.read<LocationBloc>().add(ClearShowModal());
            }

            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (state.status == LocationStateEnum.locationLoaded &&
                  state.newLocation != null) {
                _mapController.move(
                  LatLng(
                    state.newLocation!.latitude,
                    state.newLocation!.longitude,
                  ),
                  15,
                );
              }
            });
          },
          builder: (context, state) {
            if (state.status == LocationStateEnum.loading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.status == LocationStateEnum.error) {
              return Center(child: Text(state.errorMessage ?? ''));
            }

            if (state.status == LocationStateEnum.locationLoaded) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  FlutterMap(
                    mapController: _mapController,
                    options: MapOptions(
                      initialCenter: LatLng(
                        state.currentLocation?.latitude ?? 0,
                        state.currentLocation?.longitude ?? 0,
                      ),
                      initialZoom: 15,
                      onPositionChanged: (position, hasGesture) {
                        final center = _mapController.camera.center;
                        setState(() {
                          _center = center;
                        });
                      },
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName: 'com.example.weather_app',
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(
                              state.currentLocation?.latitude ?? 0,
                              state.currentLocation?.longitude ?? 0,
                            ),
                            child: const Icon(
                              Icons.my_location,
                              color: AppColors.secondary,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const IgnorePointer(
                    child: Icon(
                      Icons.location_pin,
                      size: 45,
                      color: AppColors.primary,
                    ),
                  ),
                  if (_center != null)
                    Positioned(
                      bottom: 40,
                      left: 20,
                      right: 20,
                      child: CustomButton(
                        onPressed: () {
                          if (!state.isWeatherLoading) {
                            context.read<LocationBloc>().add(
                              CheckWeatherFromLocation(
                                lat: state.newLocation?.latitude ?? 0,
                                long: state.newLocation?.longitude ?? 0,
                              ),
                            );
                          }
                        },

                        child: state.isWeatherLoading
                            ? Transform.scale(
                                scale: 0.5,
                                child: CircularProgressIndicator(),
                              )
                            : Text(
                                'Check weather',
                                style: TextStyle(color: Colors.black),
                              ),
                      ),
                    ),
                  Align(
                    alignment: Alignment.topCenter,

                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 32,
                        right: 32,
                        top: 64,
                      ),
                      child: CustomTextfield(
                        controller: _searchTextController,
                        hint: 'Search location',
                        isLoading: state.isLoadingAddress,
                        suggestions: state.addressList,
                        onSuggestionTap: (item) {
                          context.read<LocationBloc>().add(
                            ChangeLocation(
                              lat: item.lat,
                              long: item.long,
                            ),
                          );
                          _searchTextController.text = item.displayName;
                        },
                        onChanged: (String query) => context
                            .read<LocationBloc>()
                            .add(SearchAddress(query: query)),
                      ),
                    ),
                  ),
                ],
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
