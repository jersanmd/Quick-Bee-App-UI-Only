import 'package:flutter/material.dart';

class TechnologyCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150.0,
        child: new Column(
          children: <Widget>[
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: NetworkImage("https://images.techhive.com/images/article/2016/11/computerworld_tech_forecast_2017_hottest-tech-skills-for-2017-100692085-large.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Text("CPU", style: TextStyle(fontSize: 16.0), textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}

class TechnologyTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: new Text("New Technology", style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.left),
        ),
        Expanded(
          child: new Text("View All", style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Color(0xFF2BD093),), textAlign: TextAlign.right),
        )
      ],
    );
  }
}

