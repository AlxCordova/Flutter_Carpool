import 'package:flutter/material.dart';

import 'splash_page.dart';
import 'login-page.dart';
import 'register_page.dart';
import 'home_page.dart';
import './driver/trip_page.dart';
import './driver/trip2_page.dart';
import './driver/resumen_page.dart';
import './driver/final_page.dart';
import './user/search_page.dart';
import './driver/addCar_page.dart';
import './user/results_page.dart';
import './user/finalUser_page.dart';
import './mytrips_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    SplashScreen.tag: (context) => SplashScreen(),
    LoginPage.tag: (context) => LoginPage(),
    RegisterPage.tag: (context) => RegisterPage(),
    HomePage.tag: (context) => HomePage(),
    TripPage.tag: (context) => TripPage(),
    RiderPage.tag: (context) => RiderPage(),
    ResumenPage.tag: (context) => ResumenPage(),
    FinalRidePage.tag: (context) => FinalRidePage(),
    SearchPage.tag: (context) => SearchPage(),
    AddCarPage.tag: (context) => AddCarPage(),
    ResultsPage.tag: (context) => ResultsPage(),
    FinalUserPage.tag: (context) => FinalUserPage(),
    MyTripsPage.tag: (context) => MyTripsPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carpool',
      debugShowCheckedModeBanner: false,
      home: MyTripsPage(),
      routes: routes,
    );
  }
}