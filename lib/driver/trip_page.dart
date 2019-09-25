import 'package:carpool/driver/addCar_page.dart';
import 'package:flutter/material.dart';
import 'package:carpool/driver/trip2_page.dart';

class TripPage extends StatefulWidget {
  static String tag = 'trip-page';
  
  @override
  _TripPageState createState() => new _TripPageState();
}

class Dialogs {
  addCar(BuildContext context, String title, String description){
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(description)
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => _addCar(false, context),
              child: Text('CANCELAR'),
            ),
            FlatButton(
              onPressed: () => _addCar(true, context),
              child: Text('AÑADIR'),
            )
          ],
        );
      }
    );
  }  
}

_addCar(bool isAdd, BuildContext context){
    if(isAdd){
      Navigator.of(context).pushNamed(AddCarPage.tag);
    } else {
      Navigator.pop(context);
    }
}

class _TripPageState extends State<TripPage> {

  final TextEditingController controller = new TextEditingController();

  Dialogs dialogs = new Dialogs();

  String title;
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
                 //print(result); //imprime los valores
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

    final dialogBtn = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.assignment_late),
              color: Colors.red,
              iconSize: (30.0),
              onPressed: () {
                dialogs.addCar(context, 'AÑADE UN AUTO', 'Añade un vehiculo antes\n de publicar tu primer viaje');
              },
            )
          ],
        )
      ],
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
            SizedBox(height: 30.0),
            waypoints,
            dialogBtn,
            //SizedBox(height: 0.5),            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(RiderPage.tag);
        },
        child: Text('>',  style: TextStyle(color: Colors.white, fontSize: 25.0)),
        backgroundColor: Color(0xff4B2CB3),
      ),
    );
  }
}