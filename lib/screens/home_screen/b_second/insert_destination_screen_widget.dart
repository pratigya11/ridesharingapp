import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_sharing_app/app_export.dart';

// ignore: must_be_immutable
class InsertDestinationWidget extends StatelessWidget {
  final String title;
  final String address;
  final int index;
  final void Function(String title, String address, int index) submitSuggestion;
  InsertDestinationWidget(
      this.title, this.address, this.submitSuggestion, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => submitSuggestion(title, address, index),
      onDoubleTap: () => submitSuggestion(title, address, index),
      onLongPress: () => submitSuggestion(title, address, index),
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
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  8.00,
                ),
                bottom: getVerticalSize(
                  8.00,
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
                  ImageConstant.imgCarbonlocation1,
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
                  SizedBox(
                    width: getHorizontalSize(300),
                    child: Text(
                      title,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          14,
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
                        address,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.gray600,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
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
    );
  }
}
