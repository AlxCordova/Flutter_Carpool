import 'package:carpool/mytrips_page.dart';
import 'package:carpool/user/search_page.dart';
import 'package:flutter/material.dart';
import 'package:carpool/driver/trip_page.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) { 

    final logo = AspectRatio(
    aspectRatio: 1.5, //espacio 
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.5, //tamaño 
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/home.jpg'),
                      fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );

    final riderBtn = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Center(
        child: Container(
          width: 250.0,
          height: 80.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0)
            ),
            color: Color(0xff4B2CB3),//withOpacity(0.95), //Aqua#1DDCB2 Purple #4B2CB3 
            onPressed: () {
              Navigator.of(context).pushNamed(TripPage.tag);
            },
            child: Text(
              'DAR JALON', 
              style: TextStyle(
                color: Colors.white, 
                fontSize: 18.0)),
          ),
        ),
      ),
    );

    final userBtn = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Center(
        child: Container(
          width: 250.0,
          height: 80.0,
          child: RaisedButton( //.icon
            //icon: Icon(Icons.airport_shuttle, color: Colors.white, size: 50.0,),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0)
            ),
            color: Color(0xff4B2CB3),//withOpacity(0.95), //Aqua#1DDCB2 Purple #4B2CB3 
            onPressed: () {
              Navigator.of(context).pushNamed(SearchPage.tag);
            },
            child: Text('PEDIR JALON', style: TextStyle(color: Colors.white, fontSize: 18.0)), //cambiar child por label
          ),
        ),
      ),
    );

    final tripsBtn = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Center(
        child: Container(
          width: 250.0,
          height: 80.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0)
            ),
            color: Color(0xff4B2CB3),//withOpacity(0.95), //Aqua#1DDCB2 Purple #4B2CB3 
            onPressed: () {
              Navigator.of(context).pushNamed(MyTripsPage.tag);
            },
            child: Text('MIS VIAJES', style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ),
        ),
      ),
    );

    
    return Scaffold(
      drawer:new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.lightBlue.withOpacity(0.50)),
            margin: EdgeInsets.only(bottom: 40.0),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://revistadiners.pe/wp-content/uploads/2019/05/robertdowneyjr_800x669-1.jpg")
                ),
              ),
            ),
            accountName: Text(
              'TONY STARK', style: TextStyle(color: Colors.black, fontSize: 18.0)),
            accountEmail: Text(
              'adsfg@asdf.com', style: TextStyle(color: Colors.black, fontSize: 15.0)),
          ),
          new ListTile(
            title: Text(
              'MENSAJES',
              style: TextStyle(color: Colors.black, fontSize: 18.0)),
          ),
          new ListTile(
            title: Text(
              'SOLICITUDES DE VIAJE',
              style: TextStyle(color: Colors.black, fontSize: 18.0)),
              selected: true,
          ),
          new ListTile(
            title: Text(
              'CONFIGURACIONES',
              style: TextStyle(color: Colors.black, fontSize: 18.0)),
          ),
          new ListTile(
            title: Text(
              'SALIR',
              style: TextStyle(color: Colors.black, fontSize: 18.0)),
          ),
        ],
      ),
    ),
      body: Center(
        child: ListView(
          children: <Widget>[
            logo,
            riderBtn,
            userBtn,
            tripsBtn,
          ],
        ),
      ),
    );
  }
}