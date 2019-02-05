import 'package:flutter/material.dart';
import 'package:tuts_quickbee/views/home/populartrending/trendcell.dart';

class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        TrendCell(),
        SizedBox(width: 5.0,),
        TrendCell(),
        SizedBox(width: 5.0,),
        TrendCell()
      ],
    );
  }
}

class TrendingTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: new Text("Popular Trending", style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.left),
        ),
        Expanded(
          child: new Text("View All", style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Color(0xFF2BD093),), textAlign: TextAlign.right),
        )
      ],
    );
  }
}

