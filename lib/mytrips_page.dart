import 'package:carpool/bar2.dart';
import 'package:flutter/material.dart';
import 'package:carpool/bar1.dart';
//import 'package:carpool/bar2.dart';

class MyTripsPage extends StatefulWidget {
  MyTripsPage() : super();

  static String tag = 'trips-page';
  @override
  _MyTripsPageState createState() => new _MyTripsPageState();
}

class _MyTripsPageState extends State<MyTripsPage> {

  int currentTabIndex = 0;
  List<Widget> tabs = [
      TabScreen(Text('')),
      TabScreen2(Text(''))
    ];
    onTapped(int index){
      setState(() {
       currentTabIndex = index; 
      });
    }

  @override
  Widget build(BuildContext context) {
    // int _selectedPage = 0;
    // final _pageOptions = [
    //   Tab1(),
    //   Tab2()
    // ];
    
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
                    image: ExactAssetImage('assets/trips.jpg'),
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

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[
            logo,
            tabs[currentTabIndex],
            //_pageOptions[_selectedPage],
          ],
        ),
      ),
      //body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: _selectedPage,
        // onTap: (index){
        //   setState(() {
        //    _selectedPage = index; 
        //   });
        // },
        onTap: onTapped,
        currentIndex: currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('PASADOS')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text('FUTUROS')
          ),
        ],
      ),
    );
  }
}