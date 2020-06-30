import 'package:flutabbedappbar/choice_model.dart';
import 'package:flutter/material.dart';

class ChoicePage extends StatelessWidget {
  final Choice choice;
  ChoicePage({Key key,this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              choice.iconData,
              size: 150.0,
              color: textStyle.color,
            ),
            Text(
              choice.title,
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }


}
