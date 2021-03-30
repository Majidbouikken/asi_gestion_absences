import 'package:asi_gestion_absences/model/event.dart';
import 'package:asi_gestion_absences/view/widgets/WeeklyEventWidget.dart';
import 'package:asi_gestion_absences/view/widgets/calendarTitle.dart';
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
                    CalendarTitle(
                      boldText: "Today,",
                      leanText: "27th",
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    EventList(
                          todayEvents: Event.todayEvents,
                        ),
                    SizedBox(
                      height: 12,
                    ),
                    CalendarTitle(
                      boldText: "This",
                      leanText: "week",
                    ),// todo: add This week and this month events
                    SizedBox(height: 12,),
                    WeeklyEventWidget(
                      events: Event.weekEvents,
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
