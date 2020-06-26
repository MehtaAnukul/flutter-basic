import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: new Scaffold(
        appBar: new AppBar(
          title: Center(child: new Text("Home Page")),
        ),
        body: new Center(
          child: new Text("Hello word"),
        ),
      ),
    );
  }
}
