import 'package:carpool/login-page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String tag = 'splash-page';
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
Widget build(BuildContext context) {

  final logo = AspectRatio(
    aspectRatio: 0.95, //espacio derecha
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 0.95, //tamaño img
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/splash.jpg'),
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

  final title = Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        'Bienvenido a GO',
        style: TextStyle(fontSize: 32.0, 
                color: Color(0xff1DDCB2),
                fontWeight: FontWeight.bold),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.symmetric(vertical: 1.0),
      child: Text(
        'Go te ayuda a compartir tu viaje \n con otras personas ahorrando \n tiempo y dinero.\n',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final goButton = AspectRatio(
      aspectRatio: 6.0,
      child: Center(
        child: Container(
          width: 150.0,
          height: 80.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            color: Color(0xff4B2CB3),
            onPressed: () {
              Navigator.of(context).pushNamed(LoginPage.tag);
            },
            child: Text('EMPECEMOS', style: TextStyle(color: Colors.white, fontSize: 18.0)),
          ),
        ),
      ),
    );
    // final goButton = Padding(
    //   padding: EdgeInsets.symmetric(vertical: 30.0),
    //   child: RaisedButton(
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(24),
    //     ),
    //     onPressed: () {
    //       Navigator.of(context).pushNamed(LoginPage.tag);
    //     },
    //     padding: EdgeInsets.all(12),
    //     color: Color(0xff2B55A8).withOpacity(0.95),
    //     child: Text('EMPECEMOS', style: TextStyle(color: Colors.white)),
    //   ),
    // );

    final body = Container(
          width: MediaQuery.of(context).size.width,
          //padding: EdgeInsets.all(28.0),
          decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[logo,
                            title, 
                            lorem, 
                            goButton],
        ),
      );

    return Scaffold(
      body: body,
    );
    // return Scaffold(
    //   body: AspectRatio(
    //     aspectRatio: 0.75, //espacio derecha
    //     child: Column(
    //       children: <Widget>[
    //         AspectRatio(
    //           aspectRatio: 0.95, //tamaño img
    //           child: Stack(
    //             children: <Widget>[
    //               Container(
    //                 decoration: BoxDecoration(
    //                   image: DecorationImage(
    //                     image: ExactAssetImage('assets/splash.jpg'),
    //                     fit: BoxFit.cover,
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         AspectRatio(
    //           aspectRatio: 5.8 / 2 ,
    //           child: Container(
    //             child: Center(
    //               child: Padding(
    //                 padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
    //                 child: Column(
    //                   children: <Widget>[
    //                   Padding(
    //                     padding: EdgeInsets.only(top: 200.0),
    //                   ),
    //                   Text(
    //                     'Bienvenido a GO',
    //                     style: TextStyle(
    //                       color: Colors.black,
    //                       fontSize: 24.0,
    //                       fontWeight: FontWeight.bold),
    //                   ),
    //                   Padding(
    //                     padding: EdgeInsets.only(top: 15.0),
    //                   ),
    //                   Text(
    //                   'GO te ayuda a compartir tu viaje\n con otras personas ahorrando\n tiempo y dinero.',
    //                   textAlign: TextAlign.center,
    //                   style: TextStyle(
    //                     color: Colors.black,
    //                     fontSize: 18.0,
    //                     fontWeight: FontWeight.bold),
    //                 ),
    //                 ],
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //         AspectRatio(
    //           aspectRatio: 7.0,
    //           child: Center(
    //               child: Container(
    //             width: 280.0,
    //             height: 80.0,

    //             //
    //             child:

    //                 //here is the button
    //                 RaisedButton(
    //               color: Color(0xff2B55A8).withOpacity(0.95),
    //               onPressed: () {
    //                 Navigator.of(context).pushNamed(LoginPage.tag);
    //                 //SystemChannels.textInput.invokeMethod('TextInput.reload');
    //               },
    //               child: const Text(
    //                 'GET STARTED',
    //                 style: TextStyle(
    //                   color: Colors.white,
    //                   fontSize: 16.5,
    //                 ),
    //               ),
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(12),
    //               ),
    //               // the end of the button
    //             ),
    //           )),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}