import 'package:flutter/material.dart';
import 'package:flutterwhatsappclone/pages/calls_screen.dart';
import 'package:flutterwhatsappclone/pages/camera_screen.dart';
import 'package:flutterwhatsappclone/pages/chat_screen.dart';
import 'package:flutterwhatsappclone/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this,initialIndex: 1,length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white),
              onPressed: (){
                showSearch(context: context, delegate: ChatScreen());
              }),
          //new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0)),
          new Icon(Icons.more_vert),
          new Padding(padding: const EdgeInsets.only(right: 8.0)),
        ],
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.blue,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS",),
            new Tab(text: "CALLS",)
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("Open Chat"),
      ),
    );
  }
}