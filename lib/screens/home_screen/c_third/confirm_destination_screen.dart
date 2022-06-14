import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:ride_sharing_app/app_export.dart';
import 'package:ride_sharing_app/map_screen.dart';
import 'package:ride_sharing_app/screens/home_screen/d_choose_vehicle_type/choose_vehicle_type.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ConfirmDestinationScreen extends StatefulWidget {
  static const routeName = 'confirm-destination';

  @override
  State<ConfirmDestinationScreen> createState() =>
      _ConfirmDestinationScreenState();
}

class _ConfirmDestinationScreenState extends State<ConfirmDestinationScreen> {
  late List<String> destinationDetails;
  @override
  void didChangeDependencies() {
    destinationDetails =
        ModalRoute.of(context)!.settings.arguments as List<String>;

    super.didChangeDependencies();
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
                                  // right: getHorizontalSize(
                                  //   35.00,
                                  //),
                                  bottom: getVerticalSize(
                                    5.00,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: getHorizontalSize(300),
                                      child: Text(
                                        destinationDetails[1],
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
                                    ),
                                    SizedBox(
                                      width: getHorizontalSize(300),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            5.00,
                                          ),
                                          right: getHorizontalSize(
                                            10.00,
                                          ),
                                        ),
                                        child: Text(
                                          destinationDetails[2],
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
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                                ChooseVehicleScreen.routename,
                                arguments: [
                                  destinationDetails[0],
                                  destinationDetails[1] + destinationDetails[2]
                                ]);
                            //sending origin,full address
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
                    body: MapScreen(
                      origin: destinationDetails[0],
                      destination:
                          destinationDetails[1] + destinationDetails[2],
                    ),

                    // currentLat == null ? Positioned(child: NoConnectionWidget(),bottom: 200,left: 0,right: 0,) : Container(),
                    // Positioned(
                    //   right: 23,
                    //   bottom: 115,
                    //   child: GpsBtn(
                    //     onPressed: myCurrentLocation,
                    //   ),
                    // ),
                    // ],
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
