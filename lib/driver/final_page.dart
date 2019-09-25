import 'package:carpool/home_page.dart';
import 'package:flutter/material.dart';

class FinalRidePage extends StatefulWidget {
  static String tag = 'finalride-page';

  @override
  _FinalRidePageState createState() => new _FinalRidePageState();
}

class _FinalRidePageState extends State<FinalRidePage>{
  @override
Widget build(BuildContext context) {

  final logo = AspectRatio(
    aspectRatio: 1.0, 
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.0,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/riderFinal.jpg'),
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
      padding: EdgeInsets.only(left: 40.0, right: 30.0),
      child: Text(
        'VIAJE PUBLICADO!',
        style: TextStyle(fontSize: 32.0, 
                color: Color(0xff1DDCB2),
                fontWeight: FontWeight.bold),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: Text(
        'Gracias por compartir tu viaje, espera\n solicitudes de otras personas que\n quieran añadirse a tu viaje.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final okBtn = AspectRatio(
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
              Navigator.of(context).pushNamed(HomePage.tag);
            },
            child: Text('ACEPTAR', style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[
            logo,
            title,
            SizedBox(height: 10.0),
            lorem,
            SizedBox(height: 40.0),
            okBtn,
          ],
        ),
      )
    );
  }
}