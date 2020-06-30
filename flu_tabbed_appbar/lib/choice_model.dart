import 'package:flutter/material.dart';

class Choice{
  final String title;
  final IconData iconData;

  Choice({this.title, this.iconData});
}

List<Choice> choices = <Choice>[
  Choice(title: 'CAR',iconData: Icons.directions_car),
  Choice(title: 'BICYCLE',iconData: Icons.directions_bike),
  Choice(title: 'BUS',iconData: Icons.directions_bus),
  Choice(title: 'TRAIN',iconData: Icons.directions_transit),
  Choice(title: 'WALK',iconData: Icons.directions_walk),
  Choice(title: 'BOAT',iconData: Icons.directions_boat),
];

