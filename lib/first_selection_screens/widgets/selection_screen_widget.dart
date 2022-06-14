import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:ride_sharing_app/app_export.dart';
import 'package:ride_sharing_app/utils/Colors.dart';

class SelectionScreenWidget extends StatefulWidget {
  const SelectionScreenWidget({Key? key}) : super(key: key);

  @override
  State<SelectionScreenWidget> createState() => SelectionScreenWidgetState();
}

// ignore: must_be_immutable
class SelectionScreenWidgetState extends State<SelectionScreenWidget>
    with WidgetsBindingObserver {
  SelectionScreenWidgetState();
  String val = '';
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                val = 'Rider';
              });
            },
            child: Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(
                  right: getHorizontalSize(
                    16.00,
                  ),
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      13.00,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstant.black90026,
                      spreadRadius: getHorizontalSize(
                        2.00,
                      ),
                      blurRadius: getHorizontalSize(
                        2.00,
                      ),
                      offset: Offset(
                        0,
                        1,
                      ),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            10.00,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              height: getSize(
                                50.00,
                              ),
                              width: getSize(
                                50.00,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  65.00,
                                ),
                                top: getVerticalSize(
                                  20.00,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.red70026,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    25.00,
                                  ),
                                ),
                              ),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: ColorConstant.red70026,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      25.00,
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            8.00,
                                          ),
                                          top: getVerticalSize(
                                            8.00,
                                          ),
                                          right: getHorizontalSize(
                                            8.00,
                                          ),
                                          bottom: getVerticalSize(
                                            8.00,
                                          ),
                                        ),
                                        child: Container(
                                          height: getSize(
                                            34.00,
                                          ),
                                          width: getSize(
                                            34.00,
                                          ),
                                          child: SvgPicture.asset(
                                            ImageConstant.imgNounmotorcycle,
                                            fit: BoxFit.fill,
                                          ),
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
                                  34.00,
                                ),
                                right: getHorizontalSize(
                                  10.00,
                                ),
                                bottom: getVerticalSize(
                                  50.00,
                                ),
                              ),
                              child: Container(
                                height: getSize(
                                  20.00,
                                ),
                                width: getSize(
                                  20.00,
                                ),
                                child: GFRadio(
                                  type: GFRadioType.custom,
                                  activeIcon: Icon(
                                    Icons.check,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                  value: "Rider",
                                  groupValue: val,
                                  onChanged: (value) {
                                    setState(() {
                                      val = value.toString();
                                    });
                                  },
                                  inactiveIcon: Icon(
                                      Icons.radio_button_unchecked,
                                      size: 0),
                                  activeBorderColor: AppColor.colorPrimary,
                                  activeBgColor: AppColor.colorPrimary,
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
                          70.00,
                        ),
                        top: getVerticalSize(
                          16.84,
                        ),
                        right: getHorizontalSize(
                          70.00,
                        ),
                        bottom: getVerticalSize(
                          24.16,
                        ),
                      ),
                      child: Text(
                        "Rider",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.gray900,
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
          GestureDetector(
            onTap: () {
              setState(() {
                val = 'User';
              });
            },
            child: Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(
                  right: getHorizontalSize(
                    16.00,
                  ),
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      13.00,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstant.black90026,
                      spreadRadius: getHorizontalSize(
                        2.00,
                      ),
                      blurRadius: getHorizontalSize(
                        2.00,
                      ),
                      offset: Offset(
                        0,
                        1,
                      ),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            10.00,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              height: getSize(
                                50.00,
                              ),
                              width: getSize(
                                50.00,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  65.00,
                                ),
                                top: getVerticalSize(
                                  20.00,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.red70026,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    25.00,
                                  ),
                                ),
                              ),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: ColorConstant.red70026,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      25.00,
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            8.00,
                                          ),
                                          top: getVerticalSize(
                                            8.00,
                                          ),
                                          right: getHorizontalSize(
                                            8.00,
                                          ),
                                          bottom: getVerticalSize(
                                            8.00,
                                          ),
                                        ),
                                        child: Container(
                                          height: getSize(
                                            34.00,
                                          ),
                                          width: getSize(
                                            34.00,
                                          ),
                                          child: SvgPicture.asset(
                                            ImageConstant.imgNounmotorcycle1,
                                            fit: BoxFit.fill,
                                          ),
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
                                  34.00,
                                ),
                                right: getHorizontalSize(
                                  10.00,
                                ),
                                bottom: getVerticalSize(
                                  50.00,
                                ),
                              ),
                              child: Container(
                                height: getSize(
                                  20.00,
                                ),
                                width: getSize(
                                  20.00,
                                ),
                                child: GFRadio(
                                  type: GFRadioType.custom,
                                  activeIcon: Icon(
                                    Icons.check,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                  value: "User",
                                  groupValue: val,
                                  onChanged: (value) {
                                    setState(() {
                                      val = value.toString();
                                    });
                                  },
                                  inactiveIcon: Icon(
                                    Icons.radio_button_unchecked,
                                    size: 0,
                                  ),
                                  activeBorderColor: AppColor.colorPrimary,
                                  activeBgColor: AppColor.colorPrimary,
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
                          70.00,
                        ),
                        top: getVerticalSize(
                          16.84,
                        ),
                        right: getHorizontalSize(
                          70.00,
                        ),
                        bottom: getVerticalSize(
                          24.16,
                        ),
                      ),
                      child: Text(
                        "User",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.gray900,
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
    );
  }
}
