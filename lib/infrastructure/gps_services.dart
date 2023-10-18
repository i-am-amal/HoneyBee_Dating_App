import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';

class GpsServices {
  static Future<Either<String, Position>> getLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return left('Location services are disabled.. turn on location');
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return left('Location permission denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
      return left('Location permission denied forever,we cannot request');
    }

    Position currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    return right(currentPosition);
  }
}
