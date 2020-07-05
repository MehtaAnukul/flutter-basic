import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Swipe To delete",
      theme: new ThemeData(primarySwatch: Colors.orange),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> items =
      new List<String>.generate(40, (i) => "Items ${i + 1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Swipe to delete"),
      ),
      body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, int index) {
            return new Dismissible(
              key: new Key(items[index]),
              onDismissed: (direction) {
                items.removeAt(index);
                Scaffold.of(context).showSnackBar(new SnackBar(
                  content: new Text("Item deleted"),
                ));
              },
              background: new Container(
                color: Colors.orange,
              ),
              child: new ListTile(
                title: new Text("${items[index]}"),
              ),
            );
          }),
    );
  }
}
