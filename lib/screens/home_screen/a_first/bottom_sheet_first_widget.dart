import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_sharing_app/app_export.dart';

// ignore: must_be_immutable
class BottomScreenWidget extends StatelessWidget {
  BottomScreenWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          15.00,
        ),
        right: getHorizontalSize(
          6.00,
        ),
        bottom: getVerticalSize(
          15.00,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getVerticalSize(
                7.00,
              ),
              bottom: getVerticalSize(
                13.00,
              ),
            ),
            child: Container(
              height: getVerticalSize(
                26.00,
              ),
              width: getHorizontalSize(
                24.00,
              ),
              child: SvgPicture.asset(
                ImageConstant.imgIcon1,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                15.00,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: Text(
                    "Home",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        16,
                      ),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
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
                    "Khadkagaun, Kalanki",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ColorConstant.gray600,
                      fontSize: getFontSize(
                        14,
                      ),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
