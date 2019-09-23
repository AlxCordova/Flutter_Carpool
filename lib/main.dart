import 'package:flutter/material.dart';

import 'splash_page.dart';
import 'login-page.dart';
import 'register_page.dart';
import 'home_page.dart';
import 'menu_home.dart';
import 'lateral.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    SplashScreen.tag: (context) => SplashScreen(),
    LoginPage.tag: (context) => LoginPage(),
    RegisterPage.tag: (context) => RegisterPage(),
    HomePage.tag: (context) => HomePage(),
    TransparentDrawer.tag: (context) => TransparentDrawer(),
    MenuDashboardPage.tag: (context) => MenuDashboardPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carpool',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: routes,
    );
  }
}