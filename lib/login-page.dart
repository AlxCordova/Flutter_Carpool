import 'package:flutter/material.dart';
import 'home_page.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo =  ClipRRect(
        borderRadius: BorderRadius.circular(0.0),
        clipBehavior: Clip.hardEdge,
        child: Image.asset('assets/login.jpg'),
    );

  final title = Text(
    'INGRESAR',
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 25.0, 
    color: Color(0xff1DDCB2),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    ),
  );

    final email = Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Correo',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      )
    );

    final password = Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contraseña',
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
      // child: RaisedButton(
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(24),
      //   ),
      //   onPressed: () {
      //     Navigator.of(context).pushNamed(HomePage.tag);
      //   },
      //   padding: EdgeInsets.all(12),
      //   color: Colors.lightBlueAccent,
      //   child: Text('INICIAR', style: TextStyle(color: Colors.white)),
      // ),
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
          // shrinkWrap: true,
          // padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            title,
            SizedBox(height: 10.0),
            email,
            SizedBox(height: 8.0),
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