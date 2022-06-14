import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ride_sharing_app/app_export.dart';
import 'package:ride_sharing_app/screens/home_screen/d_choose_vehicle_type/choose_vehicle_type.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:ride_sharing_app/location_service.dart';

class ConfirmDestinationScreen extends StatefulWidget {
  static const routeName = 'confirm-destination';

  @override
  State<ConfirmDestinationScreen> createState() =>
      _ConfirmDestinationScreenState();
}

class _ConfirmDestinationScreenState extends State<ConfirmDestinationScreen> {
  late BitmapDescriptor originIcon;
  late BitmapDescriptor destinationIcon;
  final CustomInfoWindowController _controller = CustomInfoWindowController();
  final CameraPosition _initialCameraPosition = const CameraPosition(
    target: LatLng(27.6947033, 85.3310636),
    zoom: 13.4746,
  );
  int i = 0;
  final Set<Polyline> _polylines = <Polyline>{};
  final Set<Marker> _markers = <Marker>{};
  int _polyLineIdCounter = 1;
  late List<String> destinationDetails;
  @override
  void didChangeDependencies() {
    destinationDetails =
        ModalRoute.of(context)!.settings.arguments as List<String>;
    _initmarker();
    _maps('Chakupath Pulchowk', destinationDetails[0] + destinationDetails[1]);
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SlidingUpPanel(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    minHeight: 200,
                    maxHeight: 200,
                    panel: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              30.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray51,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                30.00,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    18.00,
                                  ),
                                  top: getVerticalSize(
                                    18.00,
                                  ),
                                  bottom: getVerticalSize(
                                    18.00,
                                  ),
                                ),
                                child: Container(
                                  height: getSize(
                                    24.00,
                                  ),
                                  width: getSize(
                                    24.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgOutlinenavigat,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    15.00,
                                  ),
                                  top: getVerticalSize(
                                    9.00,
                                  ),
                                  right: getHorizontalSize(
                                    35.00,
                                  ),
                                  bottom: getVerticalSize(
                                    5.00,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      destinationDetails[0],
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.50,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          5.00,
                                        ),
                                        right: getHorizontalSize(
                                          10.00,
                                        ),
                                      ),
                                      child: Text(
                                        destinationDetails[1],
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.50,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ChooseVehicleScreen()));
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  30.00,
                                ),
                                bottom: getVerticalSize(
                                  30.00,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: getSize(
                                      60.00,
                                    ),
                                    width: getSize(
                                      60.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgIconfilledlg,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      60.00,
                                    ),
                                    width: getHorizontalSize(
                                      294.00,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.red700,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          30.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "Confirm Destination",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    body: Stack(children: [
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
                        height: 40,
                        width: 150,
                        offset: 40,
                      ),
                      Positioned(
                        top: 30,
                        left: 20,
                        child: InkWell(
                            onTap: () {},
                            child: Icon(Icons.arrow_forward_ios_outlined)),
                      )
                    ]
                        // Stack(
                        //   children: [
                        //     GoogleMap(
                        //       initialCameraPosition: CameraPosition(
                        //           target: _initialcameraposition, zoom: 14),
                        //       mapType: MapType.normal,
                        //       //onMapCreated: _onMapCreated,
                        //       zoomGesturesEnabled: true,
                        //       myLocationEnabled: true,
                        //       zoomControlsEnabled: true,
                        //       myLocationButtonEnabled: false,
                        //       padding: EdgeInsets.only(top: 0, right: 10),
                        //       cameraTargetBounds: CameraTargetBounds.unbounded,
                        //       // markers: _markers,
                        //     ),
                        //     Positioned(
                        //       top: 30,
                        //       left: 20,
                        //       child: InkWell(
                        //           onTap: () {},
                        //           child: Icon(Icons.arrow_forward_ios_outlined)),
                        //     ),

                        // currentLat == null ? Positioned(child: NoConnectionWidget(),bottom: 200,left: 0,right: 0,) : Container(),
                        // Positioned(
                        //   right: 23,
                        //   bottom: 115,
                        //   child: GpsBtn(
                        //     onPressed: myCurrentLocation,
                        //   ),
                        // ),
                        // ],
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
