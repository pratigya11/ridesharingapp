
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_sharing_app/app_export.dart';
import 'package:ride_sharing_app/utils/Colors.dart';
import 'package:ride_sharing_app/utils/image_constant.dart';



class HyreAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Container(child: Image.asset('assets/images/animation.gif',fit: BoxFit.fitHeight,), color: Colors.black,height: double.infinity,width: double.infinity,));
  }
}
class CurrentLocationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0XFFffffff),
        boxShadow: [
          BoxShadow(
            color: Color(0XFFaaaaaa),
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      padding: EdgeInsets.all(8.0),
      child: Image.asset('assets/images/drawer.png'),
    );
  }
}
class DrawerMenuIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7,vertical: 4),
      child: SvgPicture.asset(
        ImageConstant.imgNounmenu11194,
        height: 10,
      ),
    );
  }
}

class HomePageDrawerMenuIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: Color(0XFFffffff),
        boxShadow: [
          BoxShadow(
            color: Color(0XFFaaaaaa),
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),
      child: SvgPicture.asset(
        ImageConstant.imgMenu1,height: 35,
      ),
    );
  }
}


class BtnDefaultBtn extends StatelessWidget {
  final String txt;
  final VoidCallback onPressed;

  BtnDefaultBtn({required this.txt,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorConstant.red800,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            13.00,
          ),
        ),
      ),
      child: InkWell( onTap: onPressed,
        splashColor: AppColor.colorPrimary,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(txt,    textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.whiteA700,
                fontSize: getFontSize(
                  15,
                ),
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.50,
              ),),
          ),
        ),
      ),
    );
  }
}
