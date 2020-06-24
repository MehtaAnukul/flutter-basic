import 'package:flutter/material.dart';

void main() => runApp(new Helloword());

class Helloword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text('Home Page'),
        )),
        body: Center(
          child: Text('Hello word'),
        ),
      ),
    );
  }
}
