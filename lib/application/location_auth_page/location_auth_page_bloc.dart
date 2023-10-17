import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:honeybee/core/config.dart';
import '../../../infrastructure/gps_services.dart';

part 'location_auth_page_event.dart';
part 'location_auth_page_state.dart';
part 'location_auth_page_bloc.freezed.dart';

class LocationAuthPageBloc
    extends Bloc<LocationAuthPageEvent, LocationAuthPageState> {
  LocationAuthPageBloc() : super(const _Initial()) {
    on<_FetchlocationDataEvent>(
      (event, emit) async {
        Either<String, Position> results = await GpsServices.getLocation();

        log(results.toString());

        results.fold((failure) {
          emit(state.copyWith(errorMessage: failure));
          emit(state.copyWith(errorMessage: null));
        }, (success) {
          Config.currentLatitude = success.latitude.toString();
          Config.currentLongitude = success.longitude.toString();

          emit(state.copyWith(
              currentLatitude: success.latitude,
              currentLongitude: success.longitude));
        });
      },
    );
  }
}
