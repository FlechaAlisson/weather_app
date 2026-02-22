sealed class LocationEvent {
  const LocationEvent();
}

class FetchLocation extends LocationEvent {
  const FetchLocation();
}

class ChangeLocation extends LocationEvent {
  final double lat;
  final double long;
  const ChangeLocation({
    required this.lat,
    required this.long,
  });
}

class CheckWeatherFromLocation extends LocationEvent {
  final double lat;
  final double long;
  const CheckWeatherFromLocation({
    required this.lat,
    required this.long,
  });
}

class ClearShowModal extends LocationEvent {}

class SearchAddress extends LocationEvent {
  final String query;
  const SearchAddress({required this.query});
}
