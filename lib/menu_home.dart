import 'package:flutter/material.dart';

class TransparentDrawer extends StatelessWidget {
  static String tag = 'menu-home';

  @override
  Widget build(BuildContext context) {
    // return new Scaffold(
    //   appBar: new AppBar(
    //     title: new Text('Home'),
    //   ),
    //   drawer: new Drawer(
    //     child: ListView(
    //       children: <Widget>[
    //         new UserAccountsDrawerHeader(
    //           accountName: new Text('Alex'),
    //           accountEmail: new Text('test@mail.com'),
    //           currentAccountPicture: new CircleAvatar(
    //             backgroundImage: new NetworkImage('https://i.pravatar.cc/'),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
      ),
      home: new Home(),
      builder: (BuildContext context,Widget child){
        return Padding(
          child: child,
          padding: EdgeInsets.only(bottom: 50.0),
        );
      },
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final List<String> _listViewData = [
    "Inducesmile.com",
    "Flutter Dev",
    "Android Dev",
    "iOS Dev!",
    "React Native Dev!",
    "React Dev!",
    "express Dev!",
    "Laravel Dev!",
    "Angular Dev!",
  ];
    // return Stack(
    //   children: <Widget>[
    //     new Container(
    //       height: double.infinity,
    //       width: double.infinity,
    //       decoration:new BoxDecoration(
    //         image: new DecorationImage(
    //           image: new AssetImage('assets/space.jpg'),
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //     ),
    //     Scaffold(
    //       backgroundColor: Colors.transparent,
    //       appBar: new AppBar(
    //         //title: new Text("csd"),
    //         backgroundColor: Colors.transparent,
    //         elevation: 0.0,
    //       ),
    //       body: new Container(
    //         color: Colors.transparent,
    //       ),
    //     ),
    //   ],
    // );
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/space.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Scaffold(
          appBar: AppBar(backgroundColor: Colors.transparent),
          backgroundColor: Colors.transparent,
          drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
        ),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.all(40.0), //items
            children: _listViewData
                .map((data) => ListTile(
                      title: Text(data, style: TextStyle(color: Colors.white)),
                    ))
                .toList(),
          ),
        ),
      ),
        )
      ],
    );
  }
}