import 'package:flutter/material.dart';
import 'home_page.dart';
import 'register_page.dart';

class Trip2Page extends StatefulWidget {
  static String tag = 'trip2-page';
  @override
  _Trip2PageState createState() => new _Trip2PageState();
}

class _Trip2PageState extends State<Trip2Page> {
  @override
  Widget build(BuildContext context) {

    final logo = AspectRatio(
    aspectRatio: 1.9, //espacio derecha
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 2.0, //tamaño img
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: ExactAssetImage('assets/riderInicio.jpg'),
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

    final inicioLabel = new ListTile(
      title: Text(
        '¿De dónde sales?',
        style: TextStyle(color: Colors.black, fontSize: 15.0)),
    );

    final email = Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: TextFormField(
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Punto de partida',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      )
    );

    final finalLabel = new ListTile(
      title: Text(
        '¿Hacia dónde viajas?',
        style: TextStyle(color: Colors.black, fontSize: 15.0)),
    );

    final password = Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Punto de llegada',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    ),
    );

    final loginButton = Padding(
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
              Navigator.of(context).pushNamed(HomePage.tag);
            },
            child: Text('INICIAR', style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        '¿No tienes cuenta? Registrate',
        style: TextStyle(color: Colors.lightBlue),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(RegisterPage.tag);
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[
            logo,
            inicioLabel,
            SizedBox(height: 0.1),
            email,
            //SizedBox(height: 0.1),
            finalLabel,
            //SizedBox(height: 0.1),
            password,
            SizedBox(height: 15.0),
            loginButton,
            forgotLabel,
          ],
        ),
      ),
    );
  }
}