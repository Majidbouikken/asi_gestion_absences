import 'package:asi_gestion_absences/view/widgets/asiButton.dart';
import 'package:asi_gestion_absences/view/widgets/editText.dart';
import 'package:asi_gestion_absences/view/widgets/googleLoginButton.dart';
import 'package:asi_gestion_absences/view/widgets/orDivider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'home_page.dart';

import 'dart:async';
import 'dart:convert' show json;


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //GoogleSignIn _googleSignIn;
  //GoogleSignInAccount _currentUser;
  bool isLoading = false;


  @override
  void initState() {
    super.initState();
    //_googleSignIn = GoogleSignIn(scopes: ["https://www.googleapis.com/auth/contacts.readonly",]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    child: Text(
                      "English (United States)",
                      style: Theme.of(context).textTheme.headline4,
                    ),
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
                          onPressed: () {
                            //context.read<AuthenticationController>().signIn("ha_bouikken_bahi_amar@esi.dz", "123456789");
                          }
                      ),
                      OrDivider(),
                      GoogleLoginButton(
                        onPressed: () async {
                          /*try {
                            await _googleSignIn.signIn();
                          } on Exception catch (e) {
                            print(e);
                          }*/
                        },
                      ) //_handleSignIn
                    ],
                  ),
                  // todo: don't have an account
                  Column(
                    children: [
                      Divider(
                        height: 16,
                        thickness: 1,
                      ),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Forgot your login details? ",
                                style: Theme.of(context).textTheme.headline4),
                            TextSpan(
                                text: "Get help logging in.",
                                style: Theme.of(context).textTheme.headline3),
                          ])),
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
