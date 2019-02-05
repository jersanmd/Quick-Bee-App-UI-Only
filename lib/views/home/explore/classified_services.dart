import 'package:flutter/material.dart';

class ClassifiedServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 2.5),
        child: new Container(
          height: 100,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 2.5),
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.local_offer, color: Colors.white,),
                        ),
                        new Text("Classified", style: new TextStyle(color: Colors.white, fontSize: 12.0),)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 2.5),
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Color(0xFFFC7B4D),
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.beenhere, color: Colors.white),
                        ),
                        new Text("Service", style: TextStyle(color: Colors.white, fontSize: 12.0),)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
