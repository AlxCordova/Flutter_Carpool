import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login-page.dart';

class RegisterPage extends StatefulWidget {
  static String tag = 'register-page';
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  //var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    final welcome = Text(
      'REGISTRO',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 25.0, 
      color: Color(0xff1DDCB2),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold,
      ),
    );

    final fname = TextFormField(
      autofocus: false,
      initialValue: '',
      // validator: (String value){
      //   if (value.isEmpty){
      //     return 'Campo obligatorio';
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        hintText: 'Nombre',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final lname = TextFormField(
      // key: _formKey,
      // validator: (value){
      //   if (value.isEmpty){
      //     return 'Campo obligatorio';
      //   }
      //   return null;
      // },
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Apellido',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final email = TextFormField(
      // key: _formKey,
      // validator: (value){
      //   if (value.isEmpty){
      //     return 'Campo obligatorio';
      //   }
      //   return null;
      // },
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Correo',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      // key: _formKey,
      // validator: (value){
      //   if (value.isEmpty){
      //     return 'Campo obligatorio';
      //   }
      //   return null;
      // },
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final confirmPswd = TextFormField(
      // key: _formKey,
      // validator: (value){
      //   if (value.isEmpty){
      //     return 'Campo obligatorio';
      //   }
      //   return null;
      // },
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Confirmar Contraseña',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final registerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Center(
        child: Container(
          width: 150.0,
          height: 50.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            color: Color(0xff4B2CB3),//withOpacity(0.95), //Aqua#1DDCB2 Purple #4B2CB3 
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
        'Ya tengo una cuenta',
        style: TextStyle(color: Colors.lightBlue),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(LoginPage.tag);
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        //key: _formKey,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            welcome,
            SizedBox(height: 25.0),
            fname,
            SizedBox(height: 10.0),
            lname,
            SizedBox(height: 10.0),
            email,
            SizedBox(height: 10.0),
            password,
            SizedBox(height: 10.0),
            confirmPswd,
            SizedBox(height: 10.0),
            registerButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}