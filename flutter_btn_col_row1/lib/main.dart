import 'package:flutter/material.dart';
import 'package:flutterbtncolrow1/homepage.dart';



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
        primarySwatch: Colors.cyan,
      ),
      home: Homepage(),
    );
  }

}