import 'package:flutter/material.dart';
import 'package:tuts_quickbee/views/login.dart';
import 'package:tuts_quickbee/views/stacked_icons.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new StackedIcons(),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("Quick Bee", style: new TextStyle(fontSize: 30.0),),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                        child: new Container (
                          alignment: Alignment.center,
                          height: 70.0,
                          decoration: new BoxDecoration(
                            color: Color(0xFF18D191),
                            borderRadius: new BorderRadius.circular(10.0)
                          ),
                          child: new Text("Sign In With Email",
                            style: new TextStyle( fontSize: 20.0 , color: Colors.white )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5.0),
                      child: new Container (
                        alignment: Alignment.center,
                        height: 70.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFF4364A1),
                            borderRadius: new BorderRadius.circular(10.0)
                        ),
                        child: new Text("Facebook",
                            style: new TextStyle( fontSize: 20.0 , color: Colors.white )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 20.0),
                      child: new Container (
                        alignment: Alignment.center,
                        height: 70.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFFDF513B),
                            borderRadius: new BorderRadius.circular(10.0)
                        ),
                        child: new Text("Google",
                            style: new TextStyle( fontSize: 20.0 , color: Colors.white )),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }

  

}