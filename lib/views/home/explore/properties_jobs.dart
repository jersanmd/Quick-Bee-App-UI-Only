import 'package:flutter/material.dart';

class PropertiesJobs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 2.5),
        child: new Container(
          height: 100,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 2.5, bottom: 2.5),
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Color(0xFF53CEDB),
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.account_balance, color: Colors.white),
                        ),
                        new Text("Properties", style: TextStyle(color: Colors.white, fontSize: 12.0),)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 2.5, top: 2.5),
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Color(0xFFF1B069),
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.art_track, color: Colors.white),
                        ),
                        new Text("Jobs", style: TextStyle(color: Colors.white, fontSize: 12.0),)
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
