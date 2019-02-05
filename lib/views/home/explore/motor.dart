import 'package:flutter/material.dart';

class Motor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: new Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: new BorderRadius.circular(5.0),
            color: Color(0xFFFD7384),
          ),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.drive_eta, color: Colors.white,),
              new Text("Motor", style: new TextStyle(color: Colors.white, fontSize: 12.0),)
            ],
          ),
        ),
      ),
    );
  }
}
