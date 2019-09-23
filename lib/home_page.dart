import 'package:carpool/lateral.dart' as prefix0;
import 'package:carpool/menu_home.dart';
import 'package:flutter/material.dart';
import 'package:carpool/lateral.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) { 

    final List<String> _listViewData = [
    'Perfil',
    'Mensajes',
    'Solicitudes de viaje',
    'Configuraciones',
    'Salir',
  ];

    final bar = AppBar(
      
      // title: Text("Transparent AppBar"),
      //         backgroundColor: Colors.transparent,
      //         elevation: 0,
      //         actions: <Widget>[
      //           IconButton(
      //             icon: Icon(Icons.share),
      //             onPressed: () {},
      //             tooltip: 'Share',
      //           ),
      //         ],
      // drawer: Theme(
      //   data: Theme.of(context).copyWith(
      //     canvasColor: Colors.blue,
      //   ),
      //   child: Drawer(
      //     child: ListView(
      //       padding: EdgeInsets.all(40.0), //items
      //       children: _listViewData
      //           .map((data) => ListTile(
      //                 title: Text(data, style: TextStyle(color: Colors.white)),
      //               ))
      //           .toList(),
      //     ),
      //   ),
      // ),
    );

    final logo = AspectRatio(
    aspectRatio: 1.5, //espacio 
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Row(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             mainAxisSize: MainAxisSize.max,
        //             children: [
        //               InkWell(
        //                 child: Icon(Icons.menu, color: Colors.black),
        //                 onTap: () {
                        
        //                 },
        //               ),
        //               // Text("My Cards", style: TextStyle(fontSize: 24, color: Colors.white)),
        //               // Icon(Icons.attach_money, color: Colors.white),
        //             ],
        //           ),
        AspectRatio(
          aspectRatio: 2.0, //tamaño 
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
      //   Scaffold(
      //     appBar: AppBar(backgroundColor: Colors.transparent),
      //     backgroundColor: Colors.transparent,
      //     drawer: Theme(
      //   data: Theme.of(context).copyWith(
      //     canvasColor: Colors.blue,
      //   ),
      //   child: Drawer(
      //     child: ListView(
      //       padding: EdgeInsets.all(40.0), //items
      //       children: _listViewData
      //           .map((data) => ListTile(
      //                 title: Text(data, style: TextStyle(color: Colors.white)),
      //               ))
      //           .toList(),
      //     ),
      //   ),
      // ),
      //   )
              // Container(
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: ExactAssetImage('assets/space.jpg'),
              //       fit: BoxFit.cover,
              //     )
              //   ),
              // )
            ],
          ),
        )
      ],
    ),
  );

    // final logo =  ClipRRect(
    //     borderRadius: BorderRadius.circular(20.0),
    //     clipBehavior: Clip.hardEdge,
    //     child: Image.asset('assets/home.jpg'),
    // );

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
              Navigator.of(context).pushNamed(TransparentDrawer.tag);
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
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0)
            ),
            color: Color(0xff4B2CB3),//withOpacity(0.95), //Aqua#1DDCB2 Purple #4B2CB3 
            onPressed: () {
              Navigator.of(context).pushNamed(HomePage.tag);
            },
            child: Text('PEDIR JALON', style: TextStyle(color: Colors.white, fontSize: 18.0)),
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
              Navigator.of(context).pushNamed(prefix0.MenuDashboardPage.tag);
            },
            child: Text('MIS VIAJES', style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ),
        ),
      ),
      // padding: EdgeInsets.symmetric(vertical: 10.0),
      // child: RaisedButton(
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(24),
      //   ),
      //   onPressed: () {
      //     Navigator.of(context).pushNamed(HomePage.tag);
      //   },
      //   padding: EdgeInsets.all(30), 
      //   color: Color(0xff4B2CB3),
      //   child: Text('Button 3', style: TextStyle(color: Colors.white, fontSize: 18.0)),
      // ),
    );

    
    return Scaffold(
      //title: Text('Home')),
      // appBar: AppBar(title: Text('HOME')),
      // drawer: Theme(
      //   data: Theme.of(context).copyWith(
      //     canvasColor: Colors.blue,
      //   ),
      //   child: Drawer(
      //     child: ListView(
      //       padding: EdgeInsets.all(40.0), //items
      //       children: _listViewData
      //           .map((data) => ListTile(
      //                 title: Text(data, style: TextStyle(color: Colors.white)),
      //               ))
      //           .toList(),
      //     ),
      //   ),
      // ),
      drawer:new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text('EDWIN'),
            accountEmail: Text('adsfg@asdf.com'),
          ),
          new ListTile(
            title: Text('INICIO'),
          ),
          new ListTile(
            title: Text('MENSAJES'),
          ),
          new ListTile(
            title: Text('CONFIGURACIONES'),
          ),
          new ListTile(
            title: Text('SALIR'),
          ),
        ],
      ),
    ),
      body: Center(
        child: ListView(
          //shrinkWrap: true,
          //padding: EdgeInsets.only(left: 24.0, right: 24.0), 
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