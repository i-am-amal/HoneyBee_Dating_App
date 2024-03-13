import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';

class GpsServices {
  //--------------->>>-----GetLocation----->>>------------------------

  static Future<Either<String, Position>> getLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return left('Location services are disabled.. turn on location');
    }

    //--------------->>>-----Permission Checking----->>>------------------------

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return left('Location permission denied');
      }
    }

    //--------------->>>-----Permission Denied Forever----->>>------------------

    if (permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
      return left('Location permission denied forever,we cannot request');
    }

    //--------------->>>-----Fetching CurrentPositon----->>>--------------------

    Position currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return right(currentPosition);
  }
}
