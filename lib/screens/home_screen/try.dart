
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_sharing_app/app_export.dart';
import 'package:ride_sharing_app/utils/Colors.dart';

class BottomScreen extends StatefulWidget {
  BottomScreen({required this.onPressed});
  Function onPressed;
  @override
  _BottomScreenState createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  // var name = 'Hi! Krishna, ';
  bool onceTimeNotice = true;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   DateTime now = DateTime.now();
  //
  //   print(now.hour.toString() + ":" + now.minute.toString() + ":" + now.second.toString());
  //   super.initState();
  // }
  String greetingStatus='';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return  Container(
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0))),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Container(
                  width: width,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13),
                      child: Text("Going Somewhere @Uttam ? ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ))),
          SizedBox(
            height: height * 0.012,
          ),
          Align(
            alignment: Alignment.center,
            child: InkWell(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.black12),
                height: 4,
                width: 60,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.012,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                      width: 1.2, color: ColorConstant
                      .gray400)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(
                   getHorizontalSize(30.00),),
                  color: ColorConstant
                      .whiteA700,
                ),
                padding: EdgeInsets.only(left: 15, right: 12),
                child: InkWell(
                  onTap: () {
                     widget.onPressed();
                    //userCurrentLat:widget.userCurrentLat,userCurrentLong:widget.userCurrentLong
                    // if(widget.userCurrentLat != null && widget.userCurrentLong != null) {
                    //
                    // } else {
                    //   ToastManager().gps(context,'Please, Check your GPS Connection');
                    // }
                  },
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                            EdgeInsets
                                .only(
                              left:
                              getHorizontalSize(
                                18.00,
                              ),
                              right:
                              getHorizontalSize(
                                10.00,
                              ),
                            ),
                            child:
                            Container(
                              height:
                              getSize(
                                24.00,
                              ),
                              width:
                              getSize(
                                24.00,
                              ),
                              child: SvgPicture
                                  .asset(
                                ImageConstant
                                    .imgCarbonlocation,
                                fit: BoxFit
                                    .contain,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                            child: Text(
                              'Search Destination',
                              style: TextStyle(
                                  color: ColorConstant
                                      .gray400,
                                  fontSize:  getFontSize(14.0),
                                  letterSpacing: 0.4),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                        EdgeInsets
                            .only(
                          left:
                          getHorizontalSize(
                            10.00,
                          ),
                          right:
                          getHorizontalSize(
                            18.00,
                          ),
                        ),
                        child:
                        Container(
                          height:
                          getSize(
                            24.00,
                          ),
                          width:
                          getSize(
                            24.00,
                          ),
                          child: SvgPicture
                              .asset(
                            ImageConstant
                                .imgAkariconsplus,
                            fit: BoxFit
                                .contain,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Saved", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),),

          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                Icon(Icons.home_outlined, color: AppColor.colorPrimary,size: 32,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('  Home',style: TextStyle(
                        color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600)),
                    Text('  khadkagaun, Kalanki',style: TextStyle(
                        color: Colors.black26, fontSize: 15, fontWeight: FontWeight.w300)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Container(height: 1.0, color: Colors.grey[200]),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                Icon(Icons.archive_outlined, color: AppColor.colorPrimary,size: 32,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('  Office',style: TextStyle(
                        color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600)),
                    Text('  Chakupath, Pulchowk',style: TextStyle(
                        color: Colors.black26, fontSize: 15, fontWeight: FontWeight.w300)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Container(height: 1.0, color: Colors.grey[200]),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(

                  children: [
                    Icon(Icons.album_outlined, color: AppColor.colorPrimary,size: 28,),
                    Text('   Set on map',style: TextStyle(
                        color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600)),
                  ],
                ),

                Icon(Icons.arrow_forward_ios_outlined, color: AppColor.colorPrimary,size: 18,),

              ],
            ),
          ),


        ],
      ),
    )
    ;
  }
}


