import 'package:flutter/material.dart';
import './models/location.dart';

class LocationList extends StatelessWidget {
  final List<Location> locations;

  LocationList(this.locations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(location.name),
        // todo Go on here
        //  https://fluttercrashcourse.com/courses/basics/lessons/lists-listview-listtile
        //  3:24

      ),
    );
  }

}