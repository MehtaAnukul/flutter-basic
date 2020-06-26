import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.light,
        accentColor: Colors.teal,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext = "Hello World";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Home Page",
          style: new TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _changeText,
      ),
    );
  }

  Widget _bodyWidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              mytext,
              style: new TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            new RaisedButton(
              child: new Text(
                "Click",
                style: new TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: _changeText,
              color: Colors.teal,
            )
          ],
        ),
      ),
    );
  }

  void _changeText() {
    setState(() {
      if (mytext.startsWith("H")) {
        mytext = "Welcome to HomePage";
      } else {
        mytext = "Hello World";
      }
    });
  }
}
