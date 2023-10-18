import 'dart:developer';
import 'package:geocoding/geocoding.dart';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import '../../../infrastructure/gps_services.dart';

part 'location_auth_page_event.dart';
part 'location_auth_page_state.dart';
part 'location_auth_page_bloc.freezed.dart';

class LocationAuthPageBloc
    extends Bloc<LocationAuthPageEvent, LocationAuthPageState> {
  LocationAuthPageBloc() : super(LocationAuthPageState.initial()) {
    on<_FetchLocationName>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));

        Either<String, Position> results = await GpsServices.getLocation();

        log(results.toString());

        await results.fold((failure) async {
          log('--------- failure');
          emit(state.copyWith(errorMessage: failure));
          // emit(state.copyWith(errorMessage: null));
        }, (success) async {
          log('success-------');

          double currentLatitude = success.latitude;
          double currentLongitude = success.longitude;
          log(currentLatitude.toString());
          log(currentLongitude.toString());

          List<Placemark> placemarks =
              await placemarkFromCoordinates(currentLatitude, currentLongitude);

          if (placemarks.isNotEmpty) {
            Placemark firstPlacemark = placemarks.first;
            log('${firstPlacemark.locality}, ${firstPlacemark.country}');
            emit(state.copyWith(
                locationName:
                    '${firstPlacemark.locality}, ${firstPlacemark.country}',
                isLoading: false));
          }
        });
      },
    );
  }
}
