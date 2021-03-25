import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../controller/themeController.dart';
import 'widgets/editText.dart';

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
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/esi_logo.svg',
                  width: 88,
                  color: Theme.of(context).primaryColor,
                ),
                EditText(hintText: "email",),
                EditText(hintText: "password",),
                RaisedButton(child: Text("Log in"), onPressed: () {})
              ],
            )),
      ),
    );
  }
}
