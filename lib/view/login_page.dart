import 'package:asi_gestion_absences/view/widgets/asiButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../controller/themeController.dart';
import 'widgets/editText.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              // todo: add languages
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text("English (United States)"),
              ),
              // todo: login forms
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/esi_logo.svg',
                    height: 80,
                    color: Theme.of(context).primaryColor,
                  ),
                  EditText(
                    hintText: "email",
                    textInputType: TextInputType.emailAddress,
                  ),
                  EditText(
                    hintText: "password",
                    textInputType: TextInputType.visiblePassword,
                    isPassword: true,
                  ),
                  AsiButton(
                    title: "Log in",
                  ),
                  SizedBox(
                    height: 160,
                  )
                ],
              ),
              // todo: don't have an account
              Column(
                children: [
                  Divider(
                    height: 16,
                  ),
                  Text("Don't have an account?"),
                  SizedBox(
                    height: 8,
                  )
                ],
              )
            ])),
      ),
    );
  }
}
