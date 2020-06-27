import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutternavigadraw/new_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primarySwatch: Colors.amber,
          primaryColor: defaultTargetPlatform == TargetPlatform.iOS
              ? Colors.grey[50]
              : null),
      home: new HomePage(),
//      routes: <String, WidgetBuilder>{
//        "/a" : (BuildContext context) => new NewPage("New Page"),
//      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Anukul Mehta"),
              accountEmail: new Text("mehtaanukul@gmial.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.black26,
                child: new Text("A"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: new Text("A"),
                ),
              ],
            ),
            new ListTile(
              title: new Text("Page One"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                        new NewPage("Page One")
                    )
                );
              },
            ),
            new ListTile(
              title: new Text("Page Two"),
              trailing: new Icon(Icons.arrow_downward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                        new NewPage("Page Two")
                    )
                );
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}
