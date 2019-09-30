import 'package:flutter/material.dart';
 
class TabScreen2 extends StatelessWidget {
  static String tag = 'tab2-page';

  final Text text;
  TabScreen2(this.text);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Text('VIAJES FUTUROS', style: TextStyle(fontSize: 35.0)),
    );
  }
}