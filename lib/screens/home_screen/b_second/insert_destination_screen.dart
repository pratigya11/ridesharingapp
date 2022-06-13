
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_sharing_app/app_export.dart';
import 'package:ride_sharing_app/screens/home_screen/b_second/insert_destination_screen_widget.dart';
import 'package:ride_sharing_app/screens/home_screen/c_third/confirm_destination_screen.dart';
import '../../../utils/staticWidget.dart';

class DestinationPage extends StatefulWidget {
  DestinationPage({ Key? key, required this.onPressed});
  Function onPressed;
  @override
  _DestinationPageState createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {

  @override

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).viewInsets.top;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                          bottom: getVerticalSize(
                            18.00,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              12.00,
                            ),
                            right: getHorizontalSize(
                              96.00,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                  left: getHorizontalSize(
                                    58.00,
                                  ),
                                  top: getVerticalSize(
                                    2.00,
                                  ),
                                ),
                                child: Text(
                                  "Going Somewhere, Uttam ?",
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
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      20.00,
                    ),
                    bottom: getVerticalSize(
                      3.00,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray51,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                30.00,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    18.00,
                                  ),
                                  top: getVerticalSize(
                                    8.00,
                                  ),
                                  bottom: getVerticalSize(
                                    9.00,
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          10.00,
                                        ),
                                        bottom: getVerticalSize(
                                          9.00,
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
                                          ImageConstant.imgBipinmapfill,
                                          fit: BoxFit.contain,
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
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              right: getHorizontalSize(
                                                10.00,
                                              ),
                                            ),
                                            child: Text(
                                              "Pickup point",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: ColorConstant.gray400,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w300,
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
                                              "Chakupath, Pulchowk",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: ColorConstant.black900,
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
                              ),
                              InkWell(
                                onTap: (){
                                  print("vdsh");
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ConfirmDestinationScreen()),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      22.00,
                                    ),
                                    right: getHorizontalSize(
                                      18.00,
                                    ),
                                    bottom: getVerticalSize(
                                      22.00,
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
                                      ImageConstant.imgAkariconspenc,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getVerticalSize(
                            60.00,
                          ),
                          width: getHorizontalSize(
                            374.00,
                          ),
                          margin: EdgeInsets.only(
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
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  60.00,
                                ),
                                width: getHorizontalSize(
                                  374.00,
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'LR',
                                    hintStyle: TextStyle(
                                      fontSize: getFontSize(
                                        14.0,
                                      ),
                                      color: ColorConstant.gray400,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          30.00,
                                        ),
                                      ),
                                      borderSide: BorderSide.none,
                                    ),
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          18.00,
                                        ),
                                        right: getHorizontalSize(
                                          10.00,
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
                                          ImageConstant.imgCarbonlocation,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    prefixIconConstraints: BoxConstraints(
                                      minWidth: getSize(
                                        24.00,
                                      ),
                                      minHeight: getSize(
                                        24.00,
                                      ),
                                    ),
                                    suffixIcon: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          10.00,
                                        ),
                                        right: getHorizontalSize(
                                          18.00,
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
                                          ImageConstant.imgAkariconsplus1,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    suffixIconConstraints: BoxConstraints(
                                      minWidth: getSize(
                                        24.00,
                                      ),
                                      minHeight: getSize(
                                        24.00,
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: ColorConstant.gray51,
                                    isDense: true,
                                    contentPadding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        20.45,
                                      ),
                                      bottom: getVerticalSize(
                                        20.45,
                                      ),
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: ColorConstant.gray400,
                                    fontSize: getFontSize(
                                      14.0,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      18.00,
                                    ),
                                    top: getVerticalSize(
                                      18.00,
                                    ),
                                    right: getHorizontalSize(
                                      18.00,
                                    ),
                                    bottom: getVerticalSize(
                                      18.00,
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
                                      ImageConstant.imgCarbonlocation,
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
                            20.00,
                          ),
                          top: getVerticalSize(
                            20.00,
                          ),
                          right: getHorizontalSize(
                            20.00,
                          ),
                        ),
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return InsertDestinationWidget();
                          },
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
    );
  }


  bool isShow = false;
  bool _isDestinationSelected = true;
  TextField() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
            0, 10, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20,0,10,0),
              child: Text("tRY"),
              width: 20, height: 20,
            ),
            Expanded(
              child: Padding(
                  padding:
                  const EdgeInsets
                      .only(
                      right: 10),
                  child:               Container(
                    color: Colors.black.withOpacity(0.08),
                    padding:
                    const EdgeInsets
                        .only(
                        left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:  'Searching...',hintStyle: TextStyle(fontSize: 14),
                        labelStyle: TextStyle(fontSize: 14),
                        suffixIcon: new FlatButton(
                          onPressed: () async {
                          },
                          child: new Container(
                            padding: EdgeInsets.only(left: 30),
                            child: SvgPicture.asset('assets/svg/09-MapLocation.svg',height: 22,width: 22,color: Colors.black,),

                          ),
                        ),
                      ),
                     style: TextStyle(fontSize: 15),
                      onTap: (){setState(() {
                        _isDestinationSelected = false;
                      }); resetSearchBox();},
                      onChanged: (val) async {
                      },

                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
  TextField1() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
            0, 10, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20,0,10,0),
              child: Text("try"),
              width: 20, height: 20,
            ),
            Expanded(
              child: Padding(
                  padding:
                  const EdgeInsets
                      .only(
                      right: 10),
                  child:               Container(
                    color: Colors.black.withOpacity(0.1),
                    padding:
                    const EdgeInsets
                        .only(
                        left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Choose Your Destination',hintStyle: TextStyle(fontSize: 14),
                          labelStyle: TextStyle(fontSize: 14)
                      ),
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }


  resetSearchBox() {
    setState(() {
     // isFocus = false;
      isShow = false;
    });
  }



}

















