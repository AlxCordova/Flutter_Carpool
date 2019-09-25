import 'package:carpool/driver/final_page.dart';
import 'package:flutter/material.dart';

class ResumenPage extends StatefulWidget {
  static String tag = 'resumen-page';
  @override
  _ResumenPageState createState() => new _ResumenPageState();
}

class _ResumenPageState extends State<ResumenPage> {

  @override
  Widget build(BuildContext context) {

    final title = Text(
      'RESUMEN\n DEL VIAJE',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 25.0, 
      color: Color(0xff1DDCB2),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold,
      ),
    );

    final inicioLabel = new ListTile(
      title: Text(
        '¿De dónde sales?',
        style: TextStyle(color: Colors.black, fontSize: 15.0)),
    );

    final finalLabel = new ListTile(
      title: Text(
        '¿Hacia donde viajas?',
        style: TextStyle(color: Colors.black, fontSize: 15.0)),
    );

    final escalasLabel = new ListTile(
      title: Text(
        'Paradas: ',
        style: TextStyle(color: Colors.black, fontSize: 15.0)),
    );

    final dateTimeLabel = new ListTile(
      title: Text(
        '¿Que dia viajas?',
        style: TextStyle(color: Colors.black, fontSize: 15.0)),
    );

    final seatsLabel = new ListTile(
      title: Text(
        'Asientos disponibles: ',
        style: TextStyle(color: Colors.black, fontSize: 15.0)),
    );

    final priceLabel = new ListTile(
      title: Text(
        'Precio por pasajero: ',
        style: TextStyle(color: Colors.black, fontSize: 15.0)),
    );
    
    final resumenBtn = Padding(
      padding: EdgeInsets.symmetric(vertical: 26.0),
      child: Center(
        child: Container( 
          width: 150.0,
          height: 50.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            color: Color(0xff4B2CB3),
            onPressed: () {
              Navigator.of(context).pushNamed(FinalRidePage.tag);
            },
            child: Text('PUBLICAR', style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            title,
            inicioLabel,
            finalLabel,
            escalasLabel,
            dateTimeLabel,
            seatsLabel,
            priceLabel,
            resumenBtn,          
          ],
        ),
      ),
    );
  }
}