import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterlistviewjson/drink_detail.dart';
import 'package:flutterlistviewjson/main.dart';
import 'package:http/http.dart' as http;

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [myColor, Colors.orange]
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Center(
              child: Text("Cocktail App", style: TextStyle(color: Colors.white))),
          elevation: 0.0,
        ),
        body: Center(
          child: response != null
              ? ListView.builder(
                  itemCount: drinks.length,
                  itemBuilder: (context, index) {
                    var drink = drinks[index];
                    return ListTile(
                      leading: Hero(
                        tag: drink["idDrink"],
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(drink["strDrinkThumb"] ?? // ?? means null hoy toh
                              "https://cidco-smartcity.niua.org/wp-content/uploads/2017/08/No-image-found.jpg" //if img not found so this img print
                          ),
                        ),
                      ),
                      title: Text(
                        "${drink["strDrink"]}",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        "${drink["idDrink"]}",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DrinkDetails(drink: drink),
                            ));
                      },
                    );
                  },
                )
              : CircularProgressIndicator(
                  backgroundColor: Colors.white,
                ),
        ),
      ),
    );
  }
}
