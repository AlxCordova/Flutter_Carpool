import 'package:flutter/material.dart';
 
class TabScreen extends StatelessWidget {
  static String tag = 'tab1-page';

  final Text text;
  TabScreen(this.text);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Text('VIAJES PASADOS', style: TextStyle(fontSize: 35.0)),
    );
  }
}