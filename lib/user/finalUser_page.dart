import 'package:carpool/home_page.dart';
import 'package:flutter/material.dart';

class FinalUserPage extends StatefulWidget {
  static String tag = 'finaluser-page';

  @override
  _FinalUserPageState createState() => new _FinalUserPageState();
}

class _FinalUserPageState extends State<FinalUserPage>{
  @override
Widget build(BuildContext context) {

  final logo = AspectRatio(
    aspectRatio: 1.0, 
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.0, //size
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/final.jpg'),
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
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      child: Text(
        'VIAJE RESERVADO',
        style: TextStyle(fontSize: 30.0, 
                color: Color(0xff1DDCB2),
                fontWeight: FontWeight.bold),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: Text(
        'Ponte en contacto con el piloto\n para saber más detalles\n sobre el viaje.',
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