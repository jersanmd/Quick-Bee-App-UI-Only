import 'package:flutter/material.dart';

class TrendCell extends StatelessWidget {
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
                      image: NetworkImage("http://www.howtogeek.com/wp-content/uploads/2016/01/steam-and-xbox-controllers.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Text("Playstation", style: TextStyle(fontSize: 16.0), textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
