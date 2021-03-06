import 'package:flutter/material.dart';
import './models/location.dart';
import './styles.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          location.name,
          style: Styles.navBarTitle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _renderBody(context, location),
      ),
    );
  }

  List<Widget> _renderBody(BuildContext context, Location location) {
    return [
      _bannerImage(location.url, 170.0),
      ..._renderFacts(context, location)
    ];
  }

  List<Widget> _renderFacts(BuildContext context, Location location) {
    var result = <Widget>[];
    location.facts.forEach((fact) {
      result.add(_sectionTitle(fact.title));
      result.add(_sectionText(fact.text));
    });
    return result;
  }

  Widget _sectionTitle(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
        child: Text(text,
          textAlign: TextAlign.left,
          style: Styles.headerLarge,
        ));
  }

  Widget _sectionText(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
        child: Text(text, style: Styles.textDefault)
    );
  }
  
  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(location.url, fit: BoxFit.fitWidth),
    );
  }
}
