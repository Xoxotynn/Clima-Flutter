import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    Position position;
    try {
      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
    } catch (e) {
      print(e);
      position = Position(latitude: 37.3230, longitude: 122.0322);
    }

    latitude = position.latitude;
    longitude = position.longitude;
  }
}
