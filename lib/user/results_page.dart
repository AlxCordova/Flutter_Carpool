import 'package:carpool/user/finalUser_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ResultsPage extends StatefulWidget {
  static String tag = 'results-page';

  @override
  _ResultsPageState createState() => new _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {

  Material MyItems(String heading, String content){
    return Material(
      color: Colors.white, //color box
      elevation: 14.0,
      shadowColor: Color(0xff1DDCB2),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(heading,
                      style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold), //color title
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(content,
                      style: TextStyle(color: Colors.black, fontSize: 20.0), //color content
                    ),
                  ),
                  Material(
                    color: Colors.white, //fondo btn
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: EdgeInsets.all(0.5),//only(left: 0.5),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        color: Color(0xff4B2CB3),
                        onPressed: () {
                          Navigator.of(context).pushNamed(FinalUserPage.tag);
                        },
                        child: Text('RESERVAR', style: TextStyle(color: Colors.white, fontSize: 18.0)),
                      ),
                      // child: IconButton(
                      //   icon: Icon(Icons.add), 
                      //   color: Colors.white,
                      //   onPressed: () {
                      //     Navigator.of(context).pushNamed(HomePage.tag);
                      //   },
                      // ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    final result = StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 15.0,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        children: <Widget>[
          Text('RESULTADOS',
          textAlign: TextAlign.center, 
          style: TextStyle(
            fontSize: 25.0, color: Color(0xff1DDCB2), 
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold),),
          MyItems(
            'Username',
            'Fecha y hora de salida:\n\n Sale de:\n\n Hacia:\n\n Asientos disponibles:\n' ),
          MyItems(
            'Username',
            'Fecha y hora de salida:\n\n Sale de:\n\n Hacia:\n\n Asientos disponibles:\n' ),
          MyItems("Username", 'a'),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 50.0),
          StaggeredTile.extent(2, 350.0),
          StaggeredTile.extent(2, 350.0),
        ],
    );

    return Scaffold(
      body: result,
    );
  }
}