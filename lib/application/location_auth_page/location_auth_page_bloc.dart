import 'dart:developer';
import 'package:geocoding/geocoding.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import '../../infrastructure/services/gps_services.dart';

part 'location_auth_page_event.dart';
part 'location_auth_page_state.dart';
part 'location_auth_page_bloc.freezed.dart';

class LocationAuthPageBloc
    extends Bloc<LocationAuthPageEvent, LocationAuthPageState> {
  LocationAuthPageBloc() : super(LocationAuthPageState.initial()) {
    //--------------->>>-----Fetch Location Data----->>>------------------------

    on<_FetchLocationName>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));

        Either<String, Position> results = await GpsServices.getLocation();

        await results.fold((failure) async {
          emit(state.copyWith(errorMessage: failure));
          emit(state.copyWith(errorMessage: null));
          emit(state.copyWith(locationName: 'Kerala,India', isLoading: false));
        }, (success) async {
          //success from backend
          double currentLatitude = success.latitude;
          double currentLongitude = success.longitude;

          List<Placemark> placemarks =
              await placemarkFromCoordinates(currentLatitude, currentLongitude);

          if (placemarks.isNotEmpty) {
            Placemark firstPlacemark = placemarks.first;
            log('${firstPlacemark.locality}, ${firstPlacemark.country}');
            emit(state.copyWith(
                locationName:
                    '${firstPlacemark.locality}, ${firstPlacemark.country}',
                isLoading: false));
          } else {
            // failure from backend
            emit(state.copyWith(
                errorMessage:
                    'OOPS.. Something went wrong.. Please try again later...'));
            emit(state.copyWith(errorMessage: null));
          }
        });
      },
    );
  }
}
