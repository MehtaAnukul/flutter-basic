import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  home: new HomePage(),
  theme: ThemeData(
    primarySwatch: Colors.orange, // Colors.pink
    fontFamily: "Lobster",
  ),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var api = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail";
  var response, drinks;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    response = await http.get(api);
    drinks = jsonDecode(response.body)["drinks"];
    print(drinks.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Retrive data json http get"),
      ),
      body: new ListView.builder(
          itemCount: drinks.length,
          itemBuilder: (BuildContext context,int index){
            return new Container(
              child: new Center(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Card(
                      child: new Container(
                        child: new Row(
                          children: <Widget>[
                            new Text(drinks[index]['strDrink']),
                            new Text(drinks[index]['idDrink'],),
                          ],
                         // textDirection: TextDirection.ltr,
                        ),
                        padding: const EdgeInsets.all(20.0),
                      ),
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}




