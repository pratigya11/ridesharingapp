import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_sharing_app/app_export.dart';

// ignore: must_be_immutable
class ChooseVehicleScreenWidget extends StatelessWidget {
  ChooseVehicleScreenWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.only(
            right: getHorizontalSize(
              37.00,
            ),
          ),
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                30.00,
              ),
            ),
            border: Border.all(
              color: ColorConstant.red700,
              width: getHorizontalSize(
                1.50,
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
                  0,
                ),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    43.00,
                  ),
                  top: getVerticalSize(
                    23.00,
                  ),
                  right: getHorizontalSize(
                    43.00,
                  ),
                ),
                child: Container(
                  height: getVerticalSize(
                    40.00,
                  ),
                  width: getHorizontalSize(
                    64.00,
                  ),
                  child: SvgPicture.asset(
                    ImageConstant.imgBike,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    43.00,
                  ),
                  top: getVerticalSize(
                    20.00,
                  ),
                  right: getHorizontalSize(
                    43.00,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Bike",
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
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          4.00,
                        ),
                        top: getVerticalSize(
                          2.00,
                        ),
                        bottom: getVerticalSize(
                          1.00,
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
                          ImageConstant.imgAntdesigninfo,
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
                    43.00,
                  ),
                  top: getVerticalSize(
                    6.00,
                  ),
                  right: getHorizontalSize(
                    43.00,
                  ),
                  bottom: getVerticalSize(
                    23.00,
                  ),
                ),
                child: Text(
                  "Rs. 149",
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
            ],
          ),
        ),
      ),
    );
  }
}
