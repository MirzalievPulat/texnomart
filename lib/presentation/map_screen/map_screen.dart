import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:texnomart/data/source/remote/api/api_service_dio.dart';
import 'package:texnomart/data/source/remote/response/store_locations/store_locations.dart';
import 'package:texnomart/di/di.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../data/source/local/map_service/app_location.dart';
import '../../data/source/local/model/app_lat_long.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final mapControllerCompleter = Completer<YandexMapController>();
  final List<MapObject> mapObjects = [];

  @override
  void initState() {
    super.initState();
    _initPermission().ignore();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("Barcha do'konlar"),
      ),
      body: YandexMap(
        onMapCreated: (controller) {
          mapControllerCompleter.complete(controller);
          getBranches(context);
        },
        onMapTap: (argument) {
          print("${argument.latitude} and ${argument.longitude}");
        },
        onObjectTap: (geoObject) {
          // geoObject.
        },
        mapObjects: mapObjects,
      ),
    );
  }

  Future<void> _initPermission() async {
    if (!await LocationService().checkPermission()) {
      await LocationService().requestPermission();
    }
    await _fetchCurrentLocation();
  }

  Future<AppLatLong> _fetchCurrentLocation() async {
    AppLatLong location;
    const defLocation = MoscowLocation();
    try {
      location = await LocationService().getCurrentLocation();
    } catch (_) {
      location = defLocation;
    }

    _moveToCurrentLocation(location);
    return location;
  }

  Future<void> _moveToCurrentLocation(
    AppLatLong appLatLong,
  ) async {
    (await mapControllerCompleter.future).moveCamera(
      animation: const MapAnimation(type: MapAnimationType.linear, duration: 1),
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: Point(
            latitude: appLatLong.lat,
            longitude: appLatLong.long,
          ),
          zoom: 20,
        ),
      ),
    );
  }

  void getBranches(BuildContext context) async {
    final result = await getIt.get<ApiServiceDio>().getBranches();
    for (OpenedStore element in result.data!.data![0].openedStores ?? []) {
      print(element.name);
      //print();
      mapObjects.add(PlacemarkMapObject(
          consumeTapEvents: true,
          onTap: (mapObject, point) {
            print(" map object tapped ${element.description}"); //here
            showModalBottomSheet(
              context: context,backgroundColor: Colors.white,
              builder: (context) => bottomSheet(element),
            );
          },
          mapId: MapObjectId(element.id.toString()),
          icon: PlacemarkIcon.single(PlacemarkIconStyle(
              scale: 0.1,
              image: BitmapDescriptor.fromAssetImage(
                  'assets/images/texnomart_logo.jpg'))),
          point: Point(
              latitude: double.parse(element.lat ?? "0"),
              longitude: double.parse(element.long ?? "0"))));
    }
    setState(() {});
  }

  bottomSheet(OpenedStore element) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: IntrinsicHeight(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 24),
              height: 6,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Row(
              children: [
                const Icon(Icons.shopping_bag_outlined,color: Colors.grey,),
                const SizedBox(width: 8,),
                Expanded(
                  child: Text(element.address??"Unknown place",
                  style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),maxLines: 2,overflow: TextOverflow.ellipsis,),
                ),
              ],
            ),

            const SizedBox(height: 8,),
            Row(
              children: [
                const Icon(Icons.access_time_outlined,color: Colors.grey,),
                const SizedBox(width: 8,),
                Text("Du-Yak(${element.workTime})",
                style: const TextStyle(color: Colors.black54),maxLines: 1,overflow: TextOverflow.ellipsis,),
              ],
            ),
            const SizedBox(height: 8,),
            Row(
              children: [
                const Icon(Icons.phone,color: Colors.grey,),
                const SizedBox(width: 8,),
                Text(element.phone??"--",
                style: const TextStyle(color: Colors.black54),maxLines: 1,overflow: TextOverflow.ellipsis,),
              ],
            ),

            const SizedBox(height: 16,),
            Align(
              alignment: Alignment.centerLeft,
              child: IntrinsicWidth(
                child: InkWell(
                  splashColor: Colors.yellow,
                  // highlightColor: Colors.yellow,
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {
                    if(element.lat != null && element.long != null){
                      // openGoogleMaps(double.parse(element.lat!), double.parse(element.long!));
                      openRoute(double.parse(element.lat!), double.parse(element.long!));
                    }else{
                      Fluttertoast.showToast(msg: "Not valid location data");
                    }

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey[300]??Colors.grey,width: 2)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                      child: Row(
                        children: [
                          Icon(Icons.route,color: Colors.yellow[700]??Colors.yellow,),
                          const SizedBox(width: 8,),
                          const Text("Marshrut",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }


  Future<void> openRoute(double lat, double lon) async {
    // Get current location
    AppLatLong currentLocation = await _fetchCurrentLocation();

    double currentLat = currentLocation.lat;
    double currentLon = currentLocation.long;

    // URL scheme for Google Maps
    String googleMapsUrl =
        'https://www.google.com/maps/dir/?api=1&origin=$currentLat,$currentLon&destination=$lat,$lon&travelmode=driving';

    // // URL scheme for Yandex Maps
    // String yandexMapsUrl =
    //     'yandexmaps://build_route?lat_to=$lat&lon_to=$lon&lat_from=$currentLat&lon_from=$currentLon';

    // Try opening Google Maps
    // if (await canLaunchUrl(Uri.parse(googleMapsUrl))) {
      print("object1");
      await launchUrl(Uri.parse(googleMapsUrl));
    // }
    print("object2");
    // If Google Maps is not available, try Yandex Maps
    // else if (await canLaunch(yandexMapsUrl)) {
    //   await launch(yandexMapsUrl);
    // } else {
    //   throw 'Could not open route in either Google Maps or Yandex Maps';
    // }
  }

  Future<void> openGoogleMaps(double lat, double lon) async {
    final googleMapsUrl = 'google.navigation:q=$lat,$lon&mode=d';
    final uri = Uri.parse(googleMapsUrl);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      print("Could not open Google Maps");
    }
  }

}
