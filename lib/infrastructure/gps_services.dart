import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:honeybee/core/config.dart';

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

class LocationName {
 static Future<String> getLocationNameFromCoordinates(
      double latitude, double longitude) async {
    latitude = double.parse(Config.currentLatitude ?? 'error in  latitude ');
    longitude = double.parse(Config.currentLongitude ?? 'error in  latitude ');

    List<Placemark> placemarks =
        await placemarkFromCoordinates(latitude, longitude);

    if (placemarks.isNotEmpty) {
      Placemark firstPlacemark = placemarks.first;
      log('${firstPlacemark.locality}, ${firstPlacemark.country}');
      return '${firstPlacemark.locality}, ${firstPlacemark.country}';
    } else {
      return 'Unknown Location';
    }
  }
}




// class CoordinatesFromName {
//   static Future setCoordinates({required query}) async {
//     List<Location> locations = await locationFromAddress(query);
//     Config.currentLatitude = locations[0].latitude.toString();
//     Config.currentLongitude = locations[0].longitude.toString();
//   }
// }

