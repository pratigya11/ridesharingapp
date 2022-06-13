import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_sharing_app/app_export.dart';
import 'package:ride_sharing_app/drawers/user_drawer_screen/widget/starting_drawer_widget.dart';

class UserDrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: getVerticalSize(
                          30.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: size.width,
                              margin: EdgeInsets.only(
                                top: getVerticalSize(
                                  18.00,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    12.00,
                                  ),
                                  right: getHorizontalSize(
                                    184.00,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgLeftarrowou,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          1.00,
                                        ),
                                        bottom: getVerticalSize(
                                          1.00,
                                        ),
                                      ),
                                      child: Text(
                                        "Menu",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: ColorConstant.gray900,
                                          fontSize: getFontSize(
                                            16,
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
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  33.00,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: getVerticalSize(
                                          68.00,
                                        ),
                                        width: getHorizontalSize(
                                          60.00,
                                        ),
                                        margin: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20.00,
                                          ),
                                          top: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: getVerticalSize(
                                                    10.00,
                                                  ),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    getSize(
                                                      30.00,
                                                    ),
                                                  ),
                                                  child: Image.asset(
                                                    ImageConstant
                                                        .imgUnsplashd1upki2,
                                                    height: getSize(
                                                      60.00,
                                                    ),
                                                    width: getSize(
                                                      60.00,
                                                    ),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    22.00,
                                                  ),
                                                  top: getVerticalSize(
                                                    10.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    22.00,
                                                  ),
                                                ),
                                                child: Container(
                                                  height: getSize(
                                                    15.00,
                                                  ),
                                                  width: getSize(
                                                    15.00,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    ImageConstant.imgGroup22199,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            15.00,
                                          ),
                                          bottom: getVerticalSize(
                                            2.00,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Deepankar Khanal",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: ColorConstant.gray900,
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                letterSpacing: 0.50,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  5.00,
                                                ),
                                                right: getHorizontalSize(
                                                  10.00,
                                                ),
                                              ),
                                              child: Text(
                                                "+977 9851041853",
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
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  5.00,
                                                ),
                                                right: getHorizontalSize(
                                                  10.00,
                                                ),
                                              ),
                                              child: Text(
                                                "View Profile",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    12,
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
                                      ImageConstant.imgDownarrowou,
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
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                top: getVerticalSize(
                                  30.00,
                                ),
                                right: getHorizontalSize(
                                  15.00,
                                ),
                              ),
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 1,
                                itemBuilder: (context, index) {
                                  return UserDrawerWidget();
                                },
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                top: getVerticalSize(
                                  274.00,
                                ),
                                right: getHorizontalSize(
                                  20.00,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: getSize(
                                      24.00,
                                    ),
                                    width: getSize(
                                      24.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgOutlinestatus,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        15.00,
                                      ),
                                      top: getVerticalSize(
                                        2.00,
                                      ),
                                      bottom: getVerticalSize(
                                        3.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Permissions",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray700,
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
                          Align(
                            alignment: Alignment.centerLeft,
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
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: getSize(
                                      24.00,
                                    ),
                                    width: getSize(
                                      24.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgOutlinefilesi,
                                      fit: BoxFit.fill,
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
                                        2.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Terms & Conditions",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray700,
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
                          Align(
                            alignment: Alignment.centerLeft,
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
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: getSize(
                                      24.00,
                                    ),
                                    width: getSize(
                                      24.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgOutlinemediah,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        15.00,
                                      ),
                                      top: getVerticalSize(
                                        2.00,
                                      ),
                                      bottom: getVerticalSize(
                                        3.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Support",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray700,
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
                          Align(
                            alignment: Alignment.centerLeft,
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
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: getSize(
                                      24.00,
                                    ),
                                    width: getSize(
                                      24.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgOutlineinterfa,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        15.00,
                                      ),
                                      top: getVerticalSize(
                                        2.00,
                                      ),
                                      bottom: getVerticalSize(
                                        3.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Logout",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray700,
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
