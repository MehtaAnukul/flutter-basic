import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

void main() => runApp(new MaterialApp(
  theme: new ThemeData(
    primarySwatch: Colors.orange
  ),
  home: new HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Load Json"),
      ),
      body: new Container(
        child: new Center(
          child: new FutureBuilder(
              future: DefaultAssetBundle.of(context).loadString('load_json/person.json'),
              builder: (context, snapshot){
                //decode json data
                var mydata = json.decode(snapshot.data.toString());
                return new ListView.builder(
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: new Card(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              new Text("Name: " +mydata[index]['name']),
                              new Padding(padding: EdgeInsets.only(top: 5)),
                              new Text("Age: " +mydata[index]['age']),
                              new Padding(padding: EdgeInsets.only(top: 5)),
                              new Text("Height: " +mydata[index]['height']),
                              new Padding(padding: EdgeInsets.only(top: 5)),
                              new Text("Gender: " +mydata[index]['gender']),
                              new Padding(padding: EdgeInsets.only(top: 5)),
                              new Text("Hair_color: " +mydata[index]['hair_color']),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: mydata == null ? 0 : mydata.length,
                );
              }), //futurebuilder use for loading json file
        ),
      ),
    );
  }
}
