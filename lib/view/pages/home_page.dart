import 'package:asi_gestion_absences/model/event.dart';
import 'package:asi_gestion_absences/view/widgets/calendar/calendarColumn.dart';
import 'package:asi_gestion_absences/view/widgets/calendar/calendarStepper.dart';
import 'package:asi_gestion_absences/view/widgets/gradientScaffold.dart';
import 'package:asi_gestion_absences/view/widgets/topBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 106,
                ),

                // today's events
                // using calendar stepper
                CalendarStepper(
                  boldText: "Today,",
                  leanText: DateTime.now().day.toString() + "th",
                  todayEvents: Event.todayEvents,
                ),

                // this week events
                // using calendar column
                CalendarColumn(
                  boldText: "This",
                  leanText: "Week",
                  startingDay: 1,
                  endingDay: 7,
                  events: Event.weekEvents,
                ),

                // this month events
                // using calendar column
                CalendarColumn(
                  boldText: "This",
                  leanText: "month",
                  startingDay: 7,
                  endingDay: 30,
                  events: Event.weekEvents,
                ),
                SizedBox(
                  height: 106,
                )
              ],
            ),
          ),
          // add app bar
          TopBar(
            leftIcon: Icons.menu,
            rightIcon: Icons.calendar_today_sharp,
          ),
          // add action button
          Align(
              alignment: Alignment.bottomRight,
              child: Material(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(8)),
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
    );
  }
}
