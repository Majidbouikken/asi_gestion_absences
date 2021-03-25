import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // todo: add app bar
                Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu),
                      Icon(Icons.calendar_today),
                    ],
                  ),
                ),
                // todo: add  title divider
                RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(style: TextStyle(fontSize: 30), children: [
                      TextSpan(text: 'Mon, '),
                      TextSpan(text: '27th'),
                    ])),
                // todo: add event
                Row(
                  children: [
                    Container(
                      width: 120,
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width - 120,
                      padding: EdgeInsets.all(32),
                      color: Theme.of(context).accentColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Cours BDA'),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(text: '13:30'),
                                TextSpan(text: ' - '),
                                TextSpan(text: '15:30')
                              ])),
                              Text('2h 0m')
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).buttonColor,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Text('M'),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
