import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import '../components/header.dart';
import '../components/navbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  GoogleMapController mapController;
  var currentLocation = <String, double>{};

  @override
  void initState() {
    _getLocation();
    super.initState();
  }

  _getLocation() async {
    var location = new Location();
    try {
      currentLocation = await location.getLocation();

      print("locationLatitude: ${currentLocation["latitude"]}");
      print("locationLongitude: ${currentLocation["longitude"]}");
      setState(
              () {}); //rebuild the widget after getting the current location of the user
    } on Exception {
      currentLocation = null;
    }
  }


  void _onAddMarkerButtonPressed() {
    mapController.addMarker(
      MarkerOptions(
        position: LatLng(currentLocation["latitude"], currentLocation["longitude"]),
        infoWindowText: InfoWindowText('Your Location', '5 Star'),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
  }

  final LatLng _center = const LatLng(22.5726, 88.3639);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    this._onAddMarkerButtonPressed();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: 'Home'),
      drawer: NavBar(),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
          ),
        ],
      ),
    );
  }
}