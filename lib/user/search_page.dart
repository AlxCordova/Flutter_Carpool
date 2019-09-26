import 'package:carpool/user/results_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SearchPage extends StatefulWidget {
  static String tag = 'search-page';
  @override
  _SearchPageState createState() => new _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {

    final DateFormat df = DateFormat("dd/MM/yyyy");

    void getData(BuildContext context) async {

    var fDate = await showDatePicker(
      //seleccionar la fecha
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
    );
    //actualizar fecha
    if(fDate != null) setState(() => _selectedDate = fDate);
    //print(_selectedDate);
  }

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
                    image: ExactAssetImage('assets/user.jpg'),
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
        textCapitalization: TextCapitalization.sentences,
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
        textCapitalization: TextCapitalization.sentences,
        autofocus: false,
        initialValue: '',
        decoration: InputDecoration(
          hintText: 'Punto de llegada',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
      ),
    );

    final dateTime = new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(df.format(_selectedDate)),
            IconButton(
              icon: Icon(Icons.date_range),
              color: Colors.blue,
              onPressed: () {
                getData(context);
              },
            ),
          ],
        )
      ],
    );

    final searchBtn = Padding(
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
              Navigator.of(context).pushNamed(ResultsPage.tag);
            },
            child: Text('BUSCAR', style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ),
        ),
      ),
    );

    final dateTimeLabel = new ListTile(
      title: Text(
        '¿Qué día viajas?',
        style: TextStyle(color: Colors.black, fontSize: 15.0)),
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
            //SizedBox(height: 30.0),
            dateTimeLabel,
            dateTime,
            SizedBox(height: 50.0),
            searchBtn,       
          ],
        ),
      ),
    );
  }
}