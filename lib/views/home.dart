import 'package:flutter/material.dart';
import 'package:tuts_quickbee/views/home/explore.dart';
import 'package:tuts_quickbee/views/home/trending.dart';
import 'package:tuts_quickbee/views/home/new_technology/technologycell.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xFF29d091),
        currentIndex: _bottomNavIndex,
        onTap: (int index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(title: Text(""), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text(""), icon: Icon(Icons.local_offer)),
          BottomNavigationBarItem(title: Text(""), icon: Icon(Icons.message)),
          BottomNavigationBarItem(title: Text(""), icon: Icon(Icons.notifications)),
          BottomNavigationBarItem(title: Text(""), icon: Icon(Icons.settings))
        ],
      ),
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return new ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
            child: new Column(
              children: <Widget>[
                ExploresTitle(),
                SizedBox(height: 10.0),
                Explores(),
                SizedBox(height: 20.0),
                TrendingTitle(),
                SizedBox(height: 10.0,),
                Trending(),
                SizedBox(height: 10.0),
                TechnologyTitle(),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    TechnologyCell(),
                    SizedBox(width: 5.0,),
                    TechnologyCell(),
                    SizedBox(width: 5.0,),
                    TechnologyCell()
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
