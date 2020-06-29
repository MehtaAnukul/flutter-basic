import 'package:flutter/material.dart';
import 'package:flutterwhatsappclone/models/chat_model.dart';

class ChatScreen extends StatelessWidget implements SearchDelegate<ChatModel> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: chatModelList.length,
        itemBuilder: (context,index) => new Column(
          children: <Widget>[
            new Divider(
              height: 10.0,
            ),
            new ListTile(
              leading: new CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: new NetworkImage(chatModelList[index].avatarUrl),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    chatModelList[index].name,
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    chatModelList[index].time,
                    style: new TextStyle(color: Colors.grey,fontSize: 14.0),
                  ),
                ],
              ),
              subtitle: new Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: new Text(
                  chatModelList[index].message,
                  style: new TextStyle(color: Colors.grey,fontSize: 15.0),
                ),
              ),
            )
          ],
        ));
  }

  @override
  String query;

  @override
  ThemeData appBarTheme(BuildContext context) {
    // TODO: implement appBarTheme
    throw UnimplementedError();
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [IconButton(icon: Icon(Icons.clear), onPressed: (){
      query = "";
    },
    )];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
      close(context, null);
    },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Center(
        child: Text(
            query,
            style: TextStyle(fontSize: 20.0)
        )
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final myModelList = query.isEmpty ? chatModelList :chatModelList.where((element) => element.name.startsWith(query)).toList();
    return myModelList.isEmpty ? Center(child: Text("No Name found",style: TextStyle(fontSize: 20.0))) : ListView.builder(
        itemCount: myModelList.length,
        itemBuilder: (context,index){
          return ListTile(
              onTap: (){
                showResults(context);
              },

          );
        });
  }

  @override
  void close(BuildContext context, ChatModel result) {
    // TODO: implement close
  }

  @override
  // TODO: implement keyboardType
  TextInputType get keyboardType => throw UnimplementedError();

  @override
  // TODO: implement searchFieldLabel
  String get searchFieldLabel => throw UnimplementedError();

  @override
  void showResults(BuildContext context) {
    // TODO: implement showResults
  }

  @override
  void showSuggestions(BuildContext context) {
    // TODO: implement showSuggestions
  }

  @override
  // TODO: implement textInputAction
  TextInputAction get textInputAction => throw UnimplementedError();

  @override
  // TODO: implement transitionAnimation
  Animation<double> get transitionAnimation => throw UnimplementedError();
}
