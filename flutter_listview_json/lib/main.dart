import 'package:flutter/material.dart';
import 'package:flutterlistviewjson/homepage.dart';

const Color myColor = Colors.red;

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove debug icon in app
      title: 'Cocktail App',
      theme: ThemeData(
        primarySwatch: myColor, // Colors.pink
        //fontFamily: "Lobster",
      ),
      home: Homepage(),
    );
  }

}