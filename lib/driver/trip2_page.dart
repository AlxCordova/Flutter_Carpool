import 'package:carpool/driver/resumen_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RiderPage extends StatefulWidget {
  static String tag = 'rider-page';

  @override
  _RiderPageState createState() => new _RiderPageState();
}

class _RiderPageState extends State<RiderPage> {
  int _seats = 0;
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  void _addSeat(){
    setState(() {
      if(_seats < 4)
     _seats++; 
    });
    //print(_seats);
  }

  void _reduceSeat(){
    setState(() {
     if(_seats != 0)
     _seats--;
    });
    //print(_seats);
  }

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

  void getTime(context) async {
    //seleccionar hora
    var ftime = await showTimePicker(
      context: context,
      initialTime: _selectedTime
    );
    //actualizar hora
    if(ftime != null) setState(() => _selectedTime = ftime);
    //print(_selectedTime);
  }

  @override
  Widget build(BuildContext context) {

    final DateFormat df = DateFormat("dd/MM/yyyy");

    final logo = AspectRatio(
    aspectRatio: 2.5, //espacio 
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 2.5, //tamaño
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: ExactAssetImage('assets/driver2.jpg'),
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
             Text(_selectedTime.format(context)),
            IconButton(
              icon: Icon(Icons.date_range),
              color: Colors.blue,
              onPressed: () {
                getTime(context);
              }
            ),
          ],
        )
      ],
    );

    final seats = Container(
      child: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new FloatingActionButton(
              heroTag: 'btn1',
              mini: true,
              onPressed: _reduceSeat,
              child: new Icon(const IconData(0xe15b, fontFamily: 'MaterialIcons'), color: Colors.black),
              backgroundColor: Colors.white,
            ),
            new Text(
              '$_seats',
              style: new TextStyle(fontSize: 20.0),
            ),
            new FloatingActionButton(
              heroTag: 'btn2',
              mini: true,
              onPressed: _addSeat,
              child: new Icon(Icons.add, color: Colors.black),
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );

    final price = Padding(
      padding: EdgeInsets.only(left: 130.0, right: 130.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        autofocus: false,
        initialValue: '',
        decoration: InputDecoration(
          hintText: 'Q.',
          contentPadding: EdgeInsets.fromLTRB(40.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
      ),
    );

    final tripBtn = Padding(
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
              Navigator.of(context).pushNamed(ResumenPage.tag);
            },
            child: Text('FINALIZAR', style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ),
        ),
      ),
    );

    final dateTimeLabel = new ListTile(
      title: Text(
        '¿Qué día viajas?',
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

  return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[
            logo,
            SizedBox(height: 5.0),
            dateTimeLabel,
            dateTime,
            seatsLabel,
            seats,
            priceLabel,
            price,
            SizedBox(height: 50.0),
            tripBtn,
          ],
        ),
      ),
    );
  }
}