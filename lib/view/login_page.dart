import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Theme.of(context).backgroundColor,
          Theme.of(context).bottomAppBarColor
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            children: [
              // todo : add logo
              TextField(
                decoration: InputDecoration(hintText: "email"),
              ),
              TextField(
                decoration: InputDecoration(hintText: "password"),
              ),
              RaisedButton(child: Text("Log in"), onPressed: () {})
            ],
          ),
        )),
      ),
    );
  }
}
