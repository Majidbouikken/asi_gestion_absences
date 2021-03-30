import 'package:asi_gestion_absences/model/event.dart';
import 'package:asi_gestion_absences/view/widgets/eventListWidget.dart';
import 'package:asi_gestion_absences/view/widgets/topBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
        child: Container(
          child: Stack(
            children: [
              // todo: organize structure
              // todo: add  title divider
              SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 106,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                              style: TextStyle(fontSize: 30),
                              children: [
                                TextSpan(
                                    text: 'Today, ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1),
                                TextSpan(
                                    text: '27th',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2),
                              ])),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    EventList(
                          todayEvents: Event.testEvents,
                        ),
                    // todo: add This week and this month events
                    Row(
                      children: [
                        Container(
                          width: 120,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                    style: TextStyle(fontSize: 30),
                                    children: [
                                      TextSpan(
                                          text: 'W',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1),
                                    ])),
                          ),
                        ),
                        Container(
                          height: 160,
                          width: MediaQuery.of(context).size.width - 120,
                          padding: EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cours BDA',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 24,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.lightBlue,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Text('M'),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).buttonColor,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Text('N'),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Text('B'),
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
              // todo: add app bar
              TopBar(),
              // todo: add action button
              Align(
                  alignment: Alignment.bottomRight,
                  child: Material(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(8)),
                      elevation: 0,
                      color: Theme.of(context).buttonColor,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            height: 80,
                            width: 80,
                            alignment: Alignment.center,
                            child: Icon(Icons.add)),
                      )))
            ],
          ),
        ),
      ),
    ));
  }
}
