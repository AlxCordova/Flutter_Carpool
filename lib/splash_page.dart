import 'package:carpool/login-page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String tag = 'splash-page';
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
Widget build(BuildContext context) {

  final logo = AspectRatio(
    aspectRatio: 0.95, //espacio derecha
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 0.95, //tamaño img
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/splash.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
              )
            ],
          ),
        )
      ],
    ),
  );

  final title = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        'Bienvenido a GO',
        style: TextStyle(fontSize: 32.0, 
                color: Color(0xff1DDCB2),
                fontWeight: FontWeight.bold),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.symmetric(vertical: 1.0),
      child: Text(
        'Go te ayuda a compartir tu viaje \n con otras personas ahorrando \n tiempo y dinero.\n',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final goButton = AspectRatio(
      aspectRatio: 6.0,
      child: Center(
        child: Container(
          width: 150.0,
          height: 80.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            color: Color(0xff4B2CB3),
            onPressed: () {
              Navigator.of(context).pushNamed(LoginPage.tag);
            },
            child: Text('EMPECEMOS', style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ),
        ),
      ),
    );

    final body = Container(
          width: MediaQuery.of(context).size.width,
          //padding: EdgeInsets.all(28.0),
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