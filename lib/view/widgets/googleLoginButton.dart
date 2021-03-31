import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoogleLoginButton extends StatefulWidget {
  final Function onPressed;

  const GoogleLoginButton({Key key, this.onPressed}) : super(key: key);
  @override
  _GoogleLoginButtonState createState() => _GoogleLoginButtonState();
}

class _GoogleLoginButtonState extends State<GoogleLoginButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: GestureDetector(
          onTap: widget.onPressed,
          child: Container(
              height: 44,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/google_g_logo.svg',
                    height: 24,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Log in with Google', style: Theme.of(context).textTheme.headline3,)
                ],
              ))),
    );
  }
}
