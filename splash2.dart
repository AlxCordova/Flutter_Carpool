import 'package:carpool/login-page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String tag = 'splash-page';
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  Widget build(BuildContext context){

    final logo = Image.asset('assets/splash.jpg');
    
    final title = Padding(
      padding: EdgeInsets.only(top: 150.0),
      child: Text(
        'Bienvenido a GO',
        style: TextStyle(fontSize: 32.0, 
                color: Colors.black,
                fontWeight: FontWeight.bold),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Go te ayuda a compartir tu viaje \n con otras personas ahorrando \n tiempo y dinero.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final goButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(LoginPage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('EMPECEMOS', style: TextStyle(color: Colors.white)),
      ),
    );

    final body = Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(28.0),
        decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[logo,
                          title, 
                          lorem, 
                          goButton],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}