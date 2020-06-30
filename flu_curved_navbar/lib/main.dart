import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flucurvednavbar/calls.dart';
import 'package:flucurvednavbar/camera.dart';
import 'package:flucurvednavbar/like.dart';
import 'package:flucurvednavbar/new.dart';
import 'package:flucurvednavbar/status.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BottomNavBar(),
    ));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _page = 0;
  final pages = [Calls(), Camera(), Status(), New(), Like()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blue,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {
            _page = index;
            print(_page);
          });
        },
        items: [
          Icon(Icons.add_call),
          Icon(Icons.camera_alt),
          Icon(Icons.ac_unit),
          Icon(Icons.create_new_folder),
          Icon(Icons.favorite),
        ],
      ),
      body: pages[_page],
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Bottom Navigation bar"),
      ),
    );
  }
}
