import 'package:flutter/material.dart';
import 'package:tuts_quickbee/views/home/explore/motor.dart';
import 'package:tuts_quickbee/views/home/explore/classified_services.dart';
import 'package:tuts_quickbee/views/home/explore/properties_jobs.dart';

class Explores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Motor(),
        ClassifiedServices(),
        PropertiesJobs(),
      ],
    );
  }
}

class ExploresTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        new Text(
          "Explore",
          style: new TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
