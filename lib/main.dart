import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ride_sharing_app/first_selection_screens/selection_screen.dart';
import 'package:ride_sharing_app/screens/home_screen/c_third/confirm_destination_screen.dart';
import 'package:ride_sharing_app/screens/home_screen/d_choose_vehicle_type/choose_vehicle_type.dart';
import 'package:ride_sharing_app/screens/home_screen/e_searching_rider/searching_rider_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ride Sharing App',
      home: StartingScreen(),
      routes: {
        ConfirmDestinationScreen.routeName: (ctx) => ConfirmDestinationScreen(),
        ChooseVehicleScreen.routename:(ctx)=>ChooseVehicleScreen(),
        SearchingRiderScreen.routeName:(ctx)=>SearchingRiderScreen()
      },
    );
  }
}
