import 'package:flutter/material.dart';

class CalendarTitle extends StatelessWidget {
  final String boldText;
  final String leanText;

  const CalendarTitle({Key key, this.boldText, this.leanText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
              style: TextStyle(fontSize: 30),
              children: [
                TextSpan(
                    text: this.boldText+" ",
                    style: Theme.of(context)
                        .textTheme
                        .headline1),
                TextSpan(
                    text: this.leanText,
                    style: Theme.of(context)
                        .textTheme
                        .headline2),
              ])),
    );
  }
}