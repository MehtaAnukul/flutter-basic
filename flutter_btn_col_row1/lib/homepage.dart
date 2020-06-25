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

            Image.network(
              "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png",
              fit: BoxFit.contain,
              height: 200.0,
              width: 200.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  myText,
                  textScaleFactor: 2.0,
                ),
                SizedBox(
                  width: 20.0,
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
            )
          ],
        ),
      ),
    );
  }
}
