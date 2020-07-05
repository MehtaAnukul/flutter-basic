import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  AppLifecycleState _appLifecycleState;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    setState(() {
      _appLifecycleState = state;
      print("My App State : $_appLifecycleState");
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Flutter LifeCycle"),
        ),
        body: new OrientationBuilder(
          builder: (context, orientation) {
            return new Center(
              child: new Text(
                _appLifecycleState.toString(),
                style: new TextStyle(fontSize: 22.0,
                    color: orientation == Orientation.portrait
                        ? Colors.orange
                        : Colors.blue),
              ),
            );
          },
        ),
      ),
    );
  }
}
