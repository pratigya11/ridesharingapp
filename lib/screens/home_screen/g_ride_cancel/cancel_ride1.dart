
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ride_sharing_app/app_export.dart';
import 'package:ride_sharing_app/screens/home_screen/f_rider_Found/rider_found_screen.dart';
import 'package:ride_sharing_app/screens/home_screen/g_ride_cancel/cancel_ride2.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';

class CancelRideScreen extends StatefulWidget {
  @override
  _CancelRideScreenState createState() => _CancelRideScreenState();
}

class _CancelRideScreenState extends State<CancelRideScreen> {
  LatLng _initialcameraposition = LatLng(27.7111287,85.322257);
  String? val;



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
                    minHeight: 230,
                    maxHeight: 230,
                    panel:  Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              top: getVerticalSize(
                                10.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  getHorizontalSize(
                                    30.00,
                                  ),
                                ),
                                topRight: Radius.circular(
                                  getHorizontalSize(
                                    30.00,
                                  ),
                                ),
                                bottomLeft: Radius.circular(
                                  getHorizontalSize(
                                    0.00,
                                  ),
                                ),
                                bottomRight: Radius.circular(
                                  getHorizontalSize(
                                    0.00,
                                  ),
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: getHorizontalSize(
                                    374.00,
                                  ),
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
                                  child: Text(
                                    "Are you sure, you want to cancel your ride?",
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.black900,
                                      fontSize: getFontSize(
                                        18,
                                      ),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    374.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      20.00,
                                    ),
                                    top: getVerticalSize(
                                      5.00,
                                    ),
                                    right: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                  child: Text(
                                    "You might be charged a penalty for canceling this ride",
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.gray500,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ),
                                Padding(
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
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => RiderFoundScreen()),
                                          );
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(
                                            60.00,
                                          ),
                                          width: getHorizontalSize(
                                            177.00,
                                          ),
                                          decoration: BoxDecoration(
                                            color:
                                            ColorConstant.whiteA700,
                                            borderRadius:
                                            BorderRadius.circular(
                                              getHorizontalSize(
                                                30.00,
                                              ),
                                            ),
                                            border: Border.all(
                                              color:
                                              ColorConstant.red700,
                                              width: getHorizontalSize(
                                                2.00,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            "No",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color:
                                              ColorConstant.red700,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight:
                                              FontWeight.w700,
                                              letterSpacing: 0.50,
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => CancelRide2Screen()),
                                          );
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(
                                            60.00,
                                          ),
                                          width: getHorizontalSize(
                                            177.00,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.red700,
                                            borderRadius:
                                            BorderRadius.circular(
                                              getHorizontalSize(
                                                30.00,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            "Yes",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: ColorConstant
                                                  .whiteA700,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Inter',
                                              fontWeight:
                                              FontWeight.w700,
                                              letterSpacing: 0.50,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),


                      ],
                    ),
                    body: Stack(
                      children: [
                        GoogleMap(
                          initialCameraPosition: CameraPosition(target: _initialcameraposition,zoom: 14),
                          mapType: MapType.normal,
                          //onMapCreated: _onMapCreated,
                          zoomGesturesEnabled: true,
                          myLocationEnabled: true,
                          zoomControlsEnabled: true,
                          myLocationButtonEnabled: false,
                          padding: EdgeInsets.only(top: 0, right: 10),
                          cameraTargetBounds: CameraTargetBounds.unbounded,
                          // markers: _markers,
                        ),
                        Positioned(
                          top: 30,
                          left: 20,
                          child: InkWell(
                              onTap: (){},
                              child: Icon(Icons.arrow_forward_ios_outlined)
                          ),
                        ),

                        // currentLat == null ? Positioned(child: NoConnectionWidget(),bottom: 200,left: 0,right: 0,) : Container(),
                        // Positioned(
                        //   right: 23,
                        //   bottom: 115,
                        //   child: GpsBtn(
                        //     onPressed: myCurrentLocation,
                        //   ),
                        // ),
                      ],
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

}



