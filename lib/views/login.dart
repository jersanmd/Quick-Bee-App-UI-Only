import 'package:flutter/material.dart';
import 'package:tuts_quickbee/views/stacked_icons.dart';
import 'package:tuts_quickbee/views/home.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
      ),
      body: _body(context)
    );
  }

  Widget _body(BuildContext context) {
    return Container(
      width: double.infinity,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          StackedIcons(),
          _title(),
          new SizedBox( height: 25.0),
          _emailTextField(),
          new SizedBox( height: 15.0),
          _passwordTextField(),
          new Row(
            children: <Widget>[
              _loginButton(context),
              _forgotPasswordButton()
            ],
          ),
          _createNewAccountButton()
        ],
      ),
    );
  }

  Widget _title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Text("Quick Bee", style: new TextStyle(fontSize: 30.0),),
        )
      ],
    );
  }

  Widget _emailTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
      child: new TextField(
        decoration: new InputDecoration(labelText: "Email"),
      ),
    );
  }

  Widget _passwordTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: new TextField(
        obscureText: true,
        decoration: new InputDecoration(labelText: "Password"),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 5.0, top: 20.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => new HomePage()
            ));
          },
          child: new Container (
            alignment: Alignment.center,
            height: 70.0,
            decoration: new BoxDecoration(
                color: Color(0xFF18D191),
                borderRadius: new BorderRadius.circular(10.0)
            ),
            child: new Text("Login",
                style: new TextStyle( fontSize: 20.0 , color: Colors.white )),
          ),
        ),
      ),
    );
  }

  Widget _forgotPasswordButton() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 20.0, top: 20.0),
        child: new Container (
          alignment: Alignment.center,
          height: 70.0,
          child: new Text("Forgot password",
              style: new TextStyle( fontSize: 20.0 , color: Color(0xFF18D191) )),
        ),
      ),
    );
  }

  Widget _createNewAccountButton() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: new Text("Create a new account.",
              style: new TextStyle(
                  fontSize: 17.0,
                  color: Color(0xFF18D191),
                  fontWeight: FontWeight.bold
              ),),
          )
        ],
      ),
    );
  }
}