
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_sharing_app/drawers/user_drawer_screen/user_drawer_page.dart';
import 'package:ride_sharing_app/first_selection_screens/widgets/selection_screen_widget.dart';
import 'package:ride_sharing_app/screens/home_screen/homePage.dart';
import 'package:flutter/rendering.dart';
import 'package:ride_sharing_app/app_export.dart';
import 'package:ride_sharing_app/utils/Colors.dart';
import 'package:ride_sharing_app/utils/staticWidget.dart';
class StartingScreen extends StatefulWidget {
  const StartingScreen({ Key? key}) : super(key: key);

  @override
  State<StartingScreen> createState() => StartingScreenState();
}

class StartingScreenState  extends State<StartingScreen>with WidgetsBindingObserver {
  final GlobalKey<ScaffoldState>_scaffoldUserKey = GlobalKey();
  String? val;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldUserKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => InkWell(
              onTap: (){_scaffoldUserKey.currentState!.openDrawer();},
              child: DrawerMenuIconWidget()
          ),
        ),
      ),
      drawer: Drawer(child: UserDrawerPage(),),
      body:   Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SelectionScreenWidget(),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    12.00,
                  ),
                  top: getVerticalSize(
                    180.00,
                  ),
                  right: getHorizontalSize(
                    12.00,
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: getVerticalSize(
                    60.00,
                  ),
                  width: getHorizontalSize(
                    358.00,
                  ),
                  child: BtnDefaultBtn(
                    txt: 'Select',
                    onPressed: () {
                      print("Select");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home()));
// Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),




      ),
    );
  }
}




