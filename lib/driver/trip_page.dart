import 'package:flutter/material.dart';
import '../home_page.dart';
import '../register_page.dart';

class TripPage extends StatefulWidget {
  static String tag = 'trip-page';
  @override
  _TripPageState createState() => new _TripPageState();
}

class _TripPageState extends State<TripPage> {

  final TextEditingController controller = new TextEditingController();

  String result = "";

  @override
  Widget build(BuildContext context) {

    final logo = AspectRatio(
    aspectRatio: 2.5, //espacio derecha
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 2.5, //tamaño img
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
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

    final initPoint = Padding(
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

    final endPoint = Padding(
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

    final waypoints = Padding(
      padding: EdgeInsets.only(left: 24.0, right: 200.0),
      child: Container(
        child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: new InputDecoration(
                hintText: 'Añade una parada'
              ),
              onSubmitted: (String str){
                setState(() {
                 result = result + '\n' + str;
                 print(result);
                });
                controller.text = '';
              },
              controller: controller,
            ),
            new Text(result, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
          ],
        ),
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
            initPoint,
            //SizedBox(height: 10.0),
            finalLabel,
            //SizedBox(height: 0.1),
            endPoint,
            //SizedBox(height: 10.0),
            waypoints,
            SizedBox(height: 0.5),
            loginButton,
          ],
        ),
      ),
    );
  }
}