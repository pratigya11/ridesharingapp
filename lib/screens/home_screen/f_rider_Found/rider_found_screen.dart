
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ride_sharing_app/app_export.dart';
import 'package:ride_sharing_app/screens/home_screen/d_choose_vehicle_type/choose_vehicle_type_widget.dart';
import 'package:ride_sharing_app/utils/Colors.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RiderFoundScreen extends StatefulWidget {
  @override
  _RiderFoundScreenState createState() => _RiderFoundScreenState();
}

class _RiderFoundScreenState extends State<RiderFoundScreen> {
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
                    minHeight: 500,
                    maxHeight: 500,
                    panel:  Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              29.95,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    20.00,
                                  ),
                                ),
                                child: Text(
                                  "Rider Found",
                                  overflow:
                                  TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant
                                        .black900,
                                    fontSize: getFontSize(
                                      18,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight:
                                    FontWeight.w700,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: getHorizontalSize(
                                    20.00,
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment
                                      .center,
                                  mainAxisSize:
                                  MainAxisSize.min,
                                  children: [
                                    Container(
                                      height:
                                      getVerticalSize(
                                        23.96,
                                      ),
                                      width:
                                      getHorizontalSize(
                                        24.00,
                                      ),
                                      child:
                                      SvgPicture.asset(
                                        ImageConstant
                                            .imgChatoutline,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(
                                        left:
                                        getHorizontalSize(
                                          20.00,
                                        ),
                                      ),
                                      child: Container(
                                        height:
                                        getVerticalSize(
                                          23.96,
                                        ),
                                        width:
                                        getHorizontalSize(
                                          24.00,
                                        ),
                                        child: SvgPicture
                                            .asset(
                                          ImageConstant
                                              .imgOutlinecommuni,
                                          fit: BoxFit.fill,
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
                        Container(
                          width: getHorizontalSize(
                            90.00,
                          ),
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              19.97,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(
                              getHorizontalSize(
                                44.93,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.red700,
                              width: getHorizontalSize(
                                2.00,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    8.00,
                                  ),
                                  top: getVerticalSize(
                                    6.99,
                                  ),
                                  right: getHorizontalSize(
                                    7.00,
                                  ),
                                  bottom: getVerticalSize(
                                    7.99,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.circular(
                                    getSize(
                                      37.44,
                                    ),
                                  ),
                                  child: Image.asset(
                                    ImageConstant
                                        .imgUnsplashd1upki1,
                                    height: getVerticalSize(
                                      74.88,
                                    ),
                                    width: getHorizontalSize(
                                      75.00,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              9.98,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: Text(
                            "Uttam Tamag",
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
                        Padding(
                          padding: EdgeInsets.only(
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
                            "+977-9804400000",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.50,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              9.98,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                mainAxisSize:
                                MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        2.00,
                                      ),
                                      bottom: getVerticalSize(
                                        1.00,
                                      ),
                                    ),
                                    child: Container(
                                      height: getVerticalSize(
                                        15.97,
                                      ),
                                      width:
                                      getHorizontalSize(
                                        16.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant
                                            .imgAkariconsstar,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: Text(
                                      "4.50",
                                      overflow: TextOverflow
                                          .ellipsis,
                                      textAlign:
                                      TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant
                                            .black900,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight:
                                        FontWeight.w400,
                                        letterSpacing: 0.50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "1547 Trips",
                                overflow:
                                TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color:
                                  ColorConstant.black900,
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.50,
                                ),
                              ),
                              Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                mainAxisSize:
                                MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        2.00,
                                      ),
                                      bottom: getVerticalSize(
                                        1.00,
                                      ),
                                    ),
                                    child: Container(
                                      height: getVerticalSize(
                                        15.97,
                                      ),
                                      width:
                                      getHorizontalSize(
                                        10.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant
                                            .imgFontistoblood,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'O',
                                            style: TextStyle(
                                              color:
                                              ColorConstant
                                                  .black900,
                                              fontSize:
                                              getFontSize(
                                                14,
                                              ),
                                              fontFamily:
                                              'Inter',
                                              fontWeight:
                                              FontWeight
                                                  .w400,
                                              letterSpacing:
                                              0.50,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '+ve',
                                            style: TextStyle(
                                              color:
                                              ColorConstant
                                                  .black900,
                                              fontSize:
                                              getFontSize(
                                                12,
                                              ),
                                              fontFamily:
                                              'Inter',
                                              fontWeight:
                                              FontWeight
                                                  .w400,
                                              letterSpacing:
                                              0.50,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign:
                                      TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                mainAxisSize:
                                MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        2.26,
                                      ),
                                      bottom: getVerticalSize(
                                        0.91,
                                      ),
                                    ),
                                    child: Container(
                                      height: getVerticalSize(
                                        15.80,
                                      ),
                                      width:
                                      getHorizontalSize(
                                        16.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant
                                            .imgBadge,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Professional",
                                      overflow: TextOverflow
                                          .ellipsis,
                                      textAlign:
                                      TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant
                                            .greenA700,
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
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              10.99,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                                child: Text(
                                  "Bike Details",
                                  overflow:
                                  TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant
                                        .black900,
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
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    10.00,
                                  ),
                                  bottom: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                                child: Text(
                                  "Pulsar 220",
                                  overflow:
                                  TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant
                                        .black900,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight:
                                    FontWeight.w400,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  19.97,
                                ),
                                width: getHorizontalSize(
                                  1.00,
                                ),
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    10.00,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                  ColorConstant.gray300,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    9.00,
                                  ),
                                  bottom: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                                child: Text(
                                  "Ba Pr 02-022 Pa 2601",
                                  overflow:
                                  TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant
                                        .black900,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight:
                                    FontWeight.w400,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                18.96,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      20.00,
                                    ),
                                    right: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Trip Details",
                                    overflow:
                                    TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant
                                          .black900,
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
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      21.00,
                                    ),
                                    top: getVerticalSize(
                                      11.98,
                                    ),
                                    right: getHorizontalSize(
                                      21.00,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                    mainAxisSize:
                                    MainAxisSize.min,
                                    children: [
                                      Container(
                                        height:
                                        getVerticalSize(
                                          23.96,
                                        ),
                                        width:
                                        getHorizontalSize(
                                          24.00,
                                        ),
                                        child:
                                        SvgPicture.asset(
                                          ImageConstant
                                              .imgGroup12,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.only(
                                          left:
                                          getHorizontalSize(
                                            15.00,
                                          ),
                                          top:
                                          getVerticalSize(
                                            2.00,
                                          ),
                                          bottom:
                                          getVerticalSize(
                                            2.99,
                                          ),
                                        ),
                                        child: Text(
                                          "Chakupath, pulchowk",
                                          overflow:
                                          TextOverflow
                                              .ellipsis,
                                          textAlign:
                                          TextAlign.left,
                                          style: TextStyle(
                                            color:
                                            ColorConstant
                                                .black900,
                                            fontSize:
                                            getFontSize(
                                              14,
                                            ),
                                            fontFamily:
                                            'Inter',
                                            fontWeight:
                                            FontWeight
                                                .w400,
                                            letterSpacing:
                                            0.50,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      31.00,
                                    ),
                                    top: getVerticalSize(
                                      9.99,
                                    ),
                                    right: getHorizontalSize(
                                      31.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      12.98,
                                    ),
                                    width: getHorizontalSize(
                                      3.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant
                                          .imgVector4,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        20.00,
                                      ),
                                      top: getVerticalSize(
                                        9.60,
                                      ),
                                      right:
                                      getHorizontalSize(
                                        20.00,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment
                                          .center,
                                      mainAxisSize:
                                      MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsets.only(
                                            top:
                                            getVerticalSize(
                                              7.37,
                                            ),
                                            bottom:
                                            getVerticalSize(
                                              6.67,
                                            ),
                                          ),
                                          child: Container(
                                            height:
                                            getVerticalSize(
                                              23.96,
                                            ),
                                            width:
                                            getHorizontalSize(
                                              24.00,
                                            ),
                                            child: SvgPicture
                                                .asset(
                                              ImageConstant
                                                  .imgCarbonlocation6,
                                              fit:
                                              BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                          getHorizontalSize(
                                            309.00,
                                          ),
                                          child: Text(
                                            "Learning Realm International School, Kalanki",
                                            maxLines: null,
                                            textAlign:
                                            TextAlign
                                                .left,
                                            style: TextStyle(
                                              color:
                                              ColorConstant
                                                  .black900,
                                              fontSize:
                                              getFontSize(
                                                14,
                                              ),
                                              fontFamily:
                                              'Inter',
                                              fontWeight:
                                              FontWeight
                                                  .w400,
                                              letterSpacing:
                                              0.50,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsets.only(
                                            top:
                                            getVerticalSize(
                                              11.37,
                                            ),
                                            bottom:
                                            getVerticalSize(
                                              10.66,
                                            ),
                                          ),
                                          child: Container(
                                            height:
                                            getVerticalSize(
                                              15.97,
                                            ),
                                            width:
                                            getHorizontalSize(
                                              16.00,
                                            ),
                                            child: SvgPicture
                                                .asset(
                                              ImageConstant
                                                  .imgAkariconsplus3,
                                              fit:
                                              BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              11.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                            bottom: getVerticalSize(
                              30.00,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    9.29,
                                  ),
                                  bottom: getVerticalSize(
                                    7.78,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize:
                                  MainAxisSize.min,
                                  crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Total Distance",
                                      overflow: TextOverflow
                                          .ellipsis,
                                      textAlign:
                                      TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant
                                            .gray500,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Inter',
                                        fontWeight:
                                        FontWeight.w400,
                                        letterSpacing: 0.50,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(
                                        left:
                                        getHorizontalSize(
                                          1.00,
                                        ),
                                        top: getVerticalSize(
                                          4.99,
                                        ),
                                        right:
                                        getHorizontalSize(
                                          10.00,
                                        ),
                                      ),
                                      child: Text(
                                        "24.04 km",
                                        overflow: TextOverflow
                                            .ellipsis,
                                        textAlign:
                                        TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant
                                              .black900,
                                          fontSize:
                                          getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Inter',
                                          fontWeight:
                                          FontWeight.w700,
                                          letterSpacing: 0.50,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    9.29,
                                  ),
                                  bottom: getVerticalSize(
                                    7.78,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize:
                                  MainAxisSize.min,
                                  crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                      EdgeInsets.only(
                                        right:
                                        getHorizontalSize(
                                          10.00,
                                        ),
                                      ),
                                      child: Text(
                                        "Fair",
                                        overflow: TextOverflow
                                            .ellipsis,
                                        textAlign:
                                        TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant
                                              .gray500,
                                          fontSize:
                                          getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Inter',
                                          fontWeight:
                                          FontWeight.w400,
                                          letterSpacing: 0.50,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(
                                        top: getVerticalSize(
                                          4.99,
                                        ),
                                      ),
                                      child: Text(
                                        "Rs. 149",
                                        overflow: TextOverflow
                                            .ellipsis,
                                        textAlign:
                                        TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant
                                              .black900,
                                          fontSize:
                                          getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Inter',
                                          fontWeight:
                                          FontWeight.w700,
                                          letterSpacing: 0.50,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => ConfirmDestinationScreen()),
                                  // );
                                },
                                child:Container(
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
                                    "Cancel Ride",
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
                            ],
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



