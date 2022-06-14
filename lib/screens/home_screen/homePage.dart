import 'package:bottom_sheet_bar/bottom_sheet_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ride_sharing_app/drawers/user_drawer_screen/user_drawer_page.dart';
import 'package:ride_sharing_app/screens/home_screen/a_first/bottom_sheet_first_screen.dart';
import 'package:ride_sharing_app/screens/home_screen/b_second/insert_destination_screen.dart';

import 'package:ride_sharing_app/utils/staticWidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> with WidgetsBindingObserver {
  final GlobalKey<ScaffoldState> _scaffoldUserKey = GlobalKey();
  final _bsbController = BottomSheetBarController();
  LatLng _initialcameraposition = LatLng(27.7111287, 85.322257);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _scaffoldUserKey,
          drawer: Drawer(
            child: UserDrawerPage(),
          ),
          body: BottomSheetBar(
              locked: true,
              color: Colors.transparent,
              controller: _bsbController,
              height: 400,
              expandedBuilder: (scrollController) => _bsbController.isCollapsed
                  ? Container()
                  : DestinationPage(
                      onPressed: () {
                        _bsbController.collapse();
                      },
                      key: null,
                    ),
              collapsed: BottomScreen(onPressed: () {
                _bsbController.expand();
              }),
              body: Stack(
                children: [
                  GoogleMap(
                    initialCameraPosition: CameraPosition(
                        target: _initialcameraposition, zoom: 14),
                    mapType: MapType.normal,
                    //onMapCreated: _onMapCreated,
                    zoomGesturesEnabled: true,
                    myLocationEnabled: true,
                    zoomControlsEnabled: true,
                    myLocationButtonEnabled: false,
                    padding: EdgeInsets.only(top: 0, right: 10),
                    cameraTargetBounds: CameraTargetBounds.unbounded,
                    // markers: _markers,
                  ),
                  Positioned(
                    top: 30,
                    left: 20,
                    child: InkWell(
                        onTap: () {
                          _scaffoldUserKey.currentState?.openDrawer();
                        },
                        child: HomePageDrawerMenuIconWidget()),
                  ),

                  // currentLat == null ? Positioned(child: NoConnectionWidget(),bottom: 200,left: 0,right: 0,) : Container(),
                  // Positioned(
                  //   right: 23,
                  //   bottom: 115,
                  //   child: GpsBtn(
                  //     onPressed: myCurrentLocation,
                  //   ),
                  // ),
                ],
              ))),
    );
  }
}
