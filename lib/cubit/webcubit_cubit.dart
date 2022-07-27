import 'package:nominatim_geocoding/nominatim_geocoding.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:petology/cubit/webcubit_state.dart';

class WebcubitCubit extends Cubit<WebcubitState> {
  WebcubitCubit() : super(WebcubitInitial());

  static WebcubitCubit get(context) => BlocProvider.of(context);

  Future<Position> determinePosition() async {
    emit(determinePositionLoadingState());
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    emit(determinePositionSuccessState());
    return await Geolocator.getCurrentPosition();
  }

  String address = '';

  Future<void> GetAdressFromLatLong(Position position) async {
    emit(getCurrentLocationLoadingState());

    await NominatimGeocoding.init(reqCacheNum: 20);

    Coordinate coordinate =
        Coordinate(latitude: position.latitude, longitude: position.longitude);
    Geocoding geocoding =
        await NominatimGeocoding.to.reverseGeoCoding(coordinate);
    address = geocoding.address.houseNumber +
        ', ' +
        geocoding.address.road +
        ', ' +
        geocoding.address.neighbourhood +
        ', ' +
        geocoding.address.suburb +
        ', ' +
        geocoding.address.city +
        ', ' +
        geocoding.address.country;
    print(address);
    emit(getCurrentLocationSuccessState());
    print(geocoding);
  }
}
