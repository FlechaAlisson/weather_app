import 'package:geolocator/geolocator.dart';

class LocationDatasource {
  Future<Position> getCurrentPosition() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('GPS disabled.');
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      throw Exception('Permission denied.');
    }

    Position? lastKnown = await Geolocator.getLastKnownPosition();

    if (lastKnown != null) {
      return lastKnown;
    }

    return await Geolocator.getCurrentPosition();
  }
}
