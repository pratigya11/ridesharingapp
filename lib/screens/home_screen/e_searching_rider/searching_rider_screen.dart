import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ride_sharing_app/app_export.dart';
import 'package:ride_sharing_app/map_screen.dart';
import 'package:ride_sharing_app/screens/home_screen/d_choose_vehicle_type/choose_vehicle_type_widget.dart';
import 'package:ride_sharing_app/screens/home_screen/f_rider_Found/rider_found_screen.dart';
import 'package:ride_sharing_app/utils/Colors.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SearchingRiderScreen extends StatefulWidget {
  static const routeName = 'searching-rider';

  @override
  _SearchingRiderScreenState createState() => _SearchingRiderScreenState();
}

class _SearchingRiderScreenState extends State<SearchingRiderScreen> {
  LatLng _initialcameraposition = LatLng(27.7111287, 85.322257);
  String? val;
  double? value;
  late final List<String> travelDetails;

  void initState() {
    value = 0;
    downloadData();
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    travelDetails = ModalRoute.of(context)!.settings.arguments as List<String>;
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  void downloadData() {
    new Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (value == 1) {
          timer.cancel();
        } else {
          value = (value! + 0.1);
        }
      });
    });
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
                      minHeight: 150,
                      maxHeight: 150,
                      panel: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                                child: LinearProgressIndicator(
                              value: value,
                              backgroundColor: Colors.black12,
                              valueColor: AlwaysStoppedAnimation(
                                ColorConstant.red700,
                              ),
                              minHeight: 5,
                            )),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RiderFoundScreen()),
                              );
                            },
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    20.00,
                                  ),
                                  top: getVerticalSize(
                                    40.00,
                                  ),
                                  right: getHorizontalSize(
                                    20.00,
                                  ),
                                  bottom: getVerticalSize(
                                    30.00,
                                  ),
                                ),
                                child: Text(
                                  "Searching ride for you . . .",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      body: MapScreen(
                          destination: travelDetails[1],
                          origin: travelDetails[0])
                      // currentLat == null ? Positioned(child: NoConnectionWidget(),bottom: 200,left: 0,right: 0,) : Container(),
                      // Positioned(
                      //   right: 23,
                      //   bottom: 115,
                      //   child: GpsBtn(
                      //     onPressed: myCurrentLocation,
                      //   ),
                      // ),

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
