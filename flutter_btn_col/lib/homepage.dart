import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var myText = "India Wale";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Center(child: Text("Cocktail App",style: TextStyle(color: Colors.white))),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              myText,
              textScaleFactor: 2.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
                color: Colors.white,
                onPressed: () {
                  myText = "Hindustaani";
                  print(myText);
                  setState(() {});
                },
                child: Text("Press me")
            ),
          ],
        ),
      ),
    );
  }
}
