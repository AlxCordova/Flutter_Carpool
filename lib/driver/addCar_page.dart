import 'package:carpool/driver/trip_page.dart';
import 'package:flutter/material.dart';

class AddCarPage extends StatefulWidget {
  static String tag = 'addcar-page';
  @override
  _AddCarPageState createState() => new _AddCarPageState();
}

class _AddCarPageState extends State<AddCarPage> {

  @override
  Widget build(BuildContext context) {

    final logo = AspectRatio(
    aspectRatio: 2.5, //espacio derecha
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 3.0, //tamaño img
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: ExactAssetImage('assets/car.jpg'),
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

    final marcaLabel = new ListTile(
      title: Text(
        'Marca: ',
        style: TextStyle(color: Colors.black, fontSize: 15.0)),
    );

    final marca = Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: TextFormField(
        textCapitalization: TextCapitalization.sentences,
        autofocus: false,
        initialValue: '',
        decoration: InputDecoration(
          hintText: 'Mazda',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
      )
    );

    final serieLabel = new ListTile(
      title: Text(
        'Serie:',
        style: TextStyle(color: Colors.black, fontSize: 15.0)),
    );

    final serie = Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: TextFormField(
        textCapitalization: TextCapitalization.sentences,
        autofocus: false,
        initialValue: '',
        decoration: InputDecoration(
          hintText: 'Mazda 3',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
      ),
    );

    final placasLabel = new ListTile(
      title: Text(
        'Placas:',
        style: TextStyle(color: Colors.black, fontSize: 15.0)),
    );

    final placas = Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: TextFormField(
        textCapitalization: TextCapitalization.sentences,
        autofocus: false,
        initialValue: '',
        decoration: InputDecoration(
          hintText: 'P-123ABC',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
      ),
    );

    final tipoLabel = new ListTile(
      title: Text(
        'Tipo:',
        style: TextStyle(color: Colors.black, fontSize: 15.0)),
    );

    final tipo = Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: TextFormField(
        textCapitalization: TextCapitalization.sentences,
        autofocus: false,
        initialValue: '',
        decoration: InputDecoration(
          hintText: 'Hatchback',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
      ),
    );

    final saveBtn = Padding(
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
              Navigator.of(context).pushNamed(TripPage.tag);
            },
            child: Text('GUARDAR', style: TextStyle(color: Colors.white, fontSize: 18.0)),
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
            marcaLabel,
            marca,
            serieLabel,
            serie,
            placasLabel,
            placas,
            tipoLabel,
            tipo,
            saveBtn,
          ],
        ),
      ),
    );
  }
}