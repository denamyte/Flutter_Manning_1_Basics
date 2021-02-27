import 'package:flutter/material.dart';
import './location_list.dart';
import './models/location.dart';
import 'location_detail.dart';
import './mocks/mock_location.dart';

void main() {
  final mockLocations = MockLocation.fetchAll();

  runApp(MaterialApp(home: LocationList(mockLocations)));
}
