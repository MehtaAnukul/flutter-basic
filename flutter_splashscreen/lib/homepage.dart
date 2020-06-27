import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "Shoping Now";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text("Shoping Page")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  myText,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text(
                  "Click",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _changeText,
                color: Colors.orange,
              ),
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.blue,
          ),
          onPressed: _changeText,
          backgroundColor: Colors.orange,
        ),
      ),
    );
  }

  void _changeText() {
    setState(() {
      if (myText.startsWith("S")) {
        myText = "You are now shoping";
      } else {
        myText = "Shoping Now";
      }
    });
  }
}
