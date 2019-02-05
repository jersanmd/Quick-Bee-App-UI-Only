import 'package:flutter/material.dart';
import 'package:tuts_quickbee/views/MyHomePage.dart';

void main() => runApp(new QuickBee());

class QuickBee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Bee',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: MyHomePage(),
    );
  }

}

