import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:ride_sharing_app/location_service.dart';

class MapScreen extends StatefulWidget {
  final String destination;
  final String origin;

  const MapScreen({Key? key, required this.destination, required this.origin})
      : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late BitmapDescriptor originIcon;
  late BitmapDescriptor destinationIcon;
  final CustomInfoWindowController _controller = CustomInfoWindowController();
  final CameraPosition _initialCameraPosition = const CameraPosition(
    target: LatLng(27.6947033, 85.3310636),
    zoom: 11,
  );
  int i = 0;
  final Set<Polyline> _polylines = <Polyline>{};
  final Set<Marker> _markers = <Marker>{};
  int _polyLineIdCounter = 1;
  late List<String> destinationDetails;

  @override
  void didChangeDependencies() {
    // destinationDetails =
    //     ModalRoute.of(context)!.settings.arguments as List<String>;
    _initmarker();
    _maps(widget.origin, widget.destination);
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  void _initmarker() async {
    final Uint8List markerIconOrigin =
        await getBytesFromAsset('assets/pointer.png', 60);
    originIcon = BitmapDescriptor.fromBytes(markerIconOrigin);
    final Uint8List markerIconDesti =
        await getBytesFromAsset('assets/joystick.png', 100);
    destinationIcon = BitmapDescriptor.fromBytes(markerIconDesti);
  }

  void _setmarker(
      LatLng points, String id, String address, BitmapDescriptor _icon) {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(id),
        icon: _icon,
        position: points,
        onTap: () {
          _controller.addInfoWindow!(
            Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              address,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ],
            ),
            points,
          );
        },
      ));
    });
  }

  void _setPolyline(List<PointLatLng> points) {
    final String polylineIdVal = 'polyline_$_polyLineIdCounter';
    _polyLineIdCounter++;
    _polylines.add(
      Polyline(
        polylineId: PolylineId(polylineIdVal),
        width: 4,
        color: Colors.blue,
        points: points
            .map((point) => LatLng(point.latitude, point.longitude))
            .toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        myLocationEnabled: true,
        zoomControlsEnabled: true,
        mapType: MapType.normal,
        onTap: (position) {
          _controller.hideInfoWindow!();
        },
        onCameraMove: (position) {
          _controller.onCameraMove!();
        },
        polylines: _polylines,
        onMapCreated: (GoogleMapController controller) async {
          _controller.googleMapController = controller;
        },
        markers: _markers,
      ),
      CustomInfoWindow(
        controller: _controller,
        height: 45,
        width: 200,
        offset: 40,
      ),
      Positioned(
        top: 30,
        left: 20,
        child: InkWell(
            onTap: () {}, child: Icon(Icons.arrow_forward_ios_outlined)),
      )
    ]);
  }

  Future<void> _goToPlace(
      double startLat,
      double startLng,
      double endLat,
      double endLng,
      String startAddress,
      String endAddress,
      Map<String, dynamic> boundsNe,
      Map<String, dynamic> boundsSw) async {
    _controller.googleMapController!.animateCamera(
        CameraUpdate.newCameraPosition(
            CameraPosition(target: LatLng(endLat, endLng), zoom: 17)));
    _controller.googleMapController!.animateCamera(CameraUpdate.newLatLngBounds(
        LatLngBounds(
          northeast: LatLng(boundsNe['lat'], boundsNe['lng']),
          southwest: LatLng(boundsSw['lat'], boundsSw['lng']),
        ),
        25));
    _setmarker(
        LatLng(
          startLat,
          startLng,
        ),
        'origin',
        startAddress,
        originIcon);

    _setmarker(
        LatLng(
          endLat,
          endLng,
        ),
        'destination',
        endAddress,
        destinationIcon);
  }

  Future<void> _maps(String startAddress, String endAddress) async {
    var directions =
        await LocationService().getDirections(startAddress, endAddress);
    _goToPlace(
        directions['start_location']['lat'],
        directions['start_location']['lng'],
        directions['end_location']['lat'],
        directions['end_location']['lng'],
        startAddress,
        endAddress,
        directions['bounds_ne'],
        directions['bounds_sw']);
    setState(() {
      _setPolyline(directions['polyline_decoded']);
    });
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }
}
