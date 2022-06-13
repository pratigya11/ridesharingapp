import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_sharing_app/app_export.dart';

// ignore: must_be_immutable
class UserDrawerWidget extends StatelessWidget {
  UserDrawerWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
              top: getVerticalSize(
                15.00,
              ),
              bottom: getVerticalSize(
                15.00,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(
                          3.00,
                        ),
                      ),
                      child: Text(
                        "Become a rider",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
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
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Text(
                        "Edit your profile",
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
                Container(
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                  child: SvgPicture.asset(
                    ImageConstant.imgRightarrowo,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
              top: getVerticalSize(
                15.00,
              ),
              bottom: getVerticalSize(
                15.00,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(
                          3.00,
                        ),
                      ),
                      child: Text(
                        "Promos",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
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
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Text(
                        "View all our promo codes",
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
                Container(
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                  child: SvgPicture.asset(
                    ImageConstant.imgRightarrowo,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
              top: getVerticalSize(
                15.00,
              ),
              bottom: getVerticalSize(
                15.00,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(
                          3.00,
                        ),
                      ),
                      child: Text(
                        "Ridewell for Business",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
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
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Text(
                        "change your Wallet PIN",
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
                Container(
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                  child: SvgPicture.asset(
                    ImageConstant.imgRightarrowo,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
