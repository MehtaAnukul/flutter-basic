import 'package:flutabbedappbar/choice_model.dart';
import 'package:flutabbedappbar/choice_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(TabbedAppBar());

class TabbedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabbed AppBar"),
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map<Widget>((Choice choice){
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.iconData),
                );
            }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice){
              return Padding(
                padding: EdgeInsets.all(20.0),
                child: ChoicePage(
                  choice: choice,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}


