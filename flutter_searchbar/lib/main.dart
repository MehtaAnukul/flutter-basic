import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersearchbar/list_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search food Item"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){
            showSearch(context: context, delegate: FoodItemSearch());
          })
        ],
      ),
    );
  }
}

class FoodItemSearch extends SearchDelegate<FoodItem>{
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActionsre;
    return [IconButton(icon: Icon(Icons.clear), onPressed: (){
      query = "";
    },
    )];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeadingr;
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
    final mylist = query.isEmpty ? loadFoodItem() : loadFoodItem().where((element) => element.title.startsWith(query)).toList();
    return mylist.isEmpty ? Center(child: Text("No record found",style: TextStyle(fontSize: 20.0))) : ListView.builder(
        itemCount: mylist.length,
        itemBuilder: (context,index){
          final FoodItem listItem = mylist[index];
          return ListTile(
            onTap: (){
              showResults(context);
            },
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(listItem.title,style: TextStyle(fontSize: 20.0),),
                Text(listItem.category,style: TextStyle(color: Colors.grey))
              ],
            ),
          );
        });
  }

}
