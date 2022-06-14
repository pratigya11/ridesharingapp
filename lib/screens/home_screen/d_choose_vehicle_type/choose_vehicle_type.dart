import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ride_sharing_app/app_export.dart';
import 'package:ride_sharing_app/map_screen.dart';
import 'package:ride_sharing_app/screens/home_screen/d_choose_vehicle_type/choose_vehicle_type_widget.dart';
import 'package:ride_sharing_app/utils/Colors.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../e_searching_rider/searching_rider_screen.dart';

class ChooseVehicleScreen extends StatefulWidget {
  static const routename = 'choose-vehicle-type';
  @override
  _ChooseVehicleScreenState createState() => _ChooseVehicleScreenState();
}

class _ChooseVehicleScreenState extends State<ChooseVehicleScreen> {
  late final List<String> travelDetails;

  @override
  void didChangeDependencies() {
    travelDetails = ModalRoute.of(context)!.settings.arguments as List<String>;
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  LatLng _initialcameraposition = LatLng(27.7111287, 85.322257);
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
                      minHeight: 390,
                      maxHeight: 390,
                      panel: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
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
                            child: Container(
                              height: getVerticalSize(
                                30.00,
                              ),
                              width: getHorizontalSize(
                                374.00,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText:
                                      'Riders are safer with insurance coverage',
                                  hintStyle: TextStyle(
                                    fontSize: getFontSize(
                                      14.0,
                                    ),
                                    color: ColorConstant.deepPurple500,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        13.00,
                                      ),
                                    ),
                                    borderSide: BorderSide.none,
                                  ),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        10.00,
                                      ),
                                      right: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: Container(
                                      height: getSize(
                                        15.82,
                                      ),
                                      width: getSize(
                                        16.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgVector5,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  prefixIconConstraints: BoxConstraints(
                                    minWidth: getSize(
                                      15.82,
                                    ),
                                    minHeight: getSize(
                                      15.82,
                                    ),
                                  ),
                                  suffixIcon: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        10.00,
                                      ),
                                      right: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: Container(
                                      height: getSize(
                                        16.00,
                                      ),
                                      width: getSize(
                                        16.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgEparrowright2,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  suffixIconConstraints: BoxConstraints(
                                    minWidth: getSize(
                                      16.00,
                                    ),
                                    minHeight: getSize(
                                      16.00,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: ColorConstant.deepPurple50026,
                                  isDense: true,
                                  contentPadding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      9.80,
                                    ),
                                    bottom: getVerticalSize(
                                      9.28,
                                    ),
                                  ),
                                ),
                                style: TextStyle(
                                  color: ColorConstant.deepPurple500,
                                  fontSize: getFontSize(
                                    14.0,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                171.00,
                              ),
                              width: getHorizontalSize(
                                380.00,
                              ),
                              child: ListView.builder(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    20.00,
                                  ),
                                  top: getVerticalSize(
                                    20.00,
                                  ),
                                  right: getHorizontalSize(
                                    20.00,
                                  ),
                                ),
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  return ChooseVehicleScreenWidget();
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                30.00,
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
                                      38.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getSize(
                                      26.00,
                                    ),
                                    width: getSize(
                                      26.00,
                                    ),
                                    child: GFRadio(
                                      type: GFRadioType.custom,
                                      activeIcon: Icon(
                                        Icons.check,
                                        size: 14,
                                        color: Colors.white,
                                      ),
                                      value: "Self",
                                      groupValue: val,
                                      onChanged: (value) {
                                        setState(() {
                                          val = value.toString();
                                        });
                                      },
                                      activeBorderColor: AppColor.colorPrimary,
                                      activeBgColor: AppColor.colorPrimary,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      15.00,
                                    ),
                                    top: getVerticalSize(
                                      3.00,
                                    ),
                                    bottom: getVerticalSize(
                                      4.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Self",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.black900,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      30.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getSize(
                                      26.00,
                                    ),
                                    width: getSize(
                                      26.00,
                                    ),
                                    child: Container(
                                      height: getSize(
                                        26.00,
                                      ),
                                      width: getSize(
                                        26.00,
                                      ),
                                      child: GFRadio(
                                        type: GFRadioType.custom,
                                        activeIcon: Icon(
                                          Icons.check,
                                          size: 14,
                                          color: Colors.white,
                                        ),
                                        value: "Friend",
                                        groupValue: val,
                                        onChanged: (value) {
                                          setState(() {
                                            val = value.toString();
                                          });
                                        },
                                        activeBorderColor:
                                            AppColor.colorPrimary,
                                        activeBgColor: AppColor.colorPrimary,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      15.00,
                                    ),
                                    top: getVerticalSize(
                                      3.00,
                                    ),
                                    right: getHorizontalSize(
                                      188.00,
                                    ),
                                    bottom: getVerticalSize(
                                      4.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Friend",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.black900,
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
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                  SearchingRiderScreen.routeName,
                                  arguments: [
                                    travelDetails[0],
                                    travelDetails[1]
                                  ]);
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    20.00,
                                  ),
                                  top: getVerticalSize(
                                    30.00,
                                  ),
                                  right: getHorizontalSize(
                                    20.00,
                                  ),
                                  bottom: getVerticalSize(
                                    30.00,
                                  ),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: getVerticalSize(
                                    60.00,
                                  ),
                                  width: getHorizontalSize(
                                    374.00,
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
                                    "Send Pick Request",
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
