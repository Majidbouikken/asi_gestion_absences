import 'package:asi_gestion_absences/model/event.dart';
import 'package:asi_gestion_absences/view/widgets/event/studentCell.dart';
import 'package:asi_gestion_absences/view/widgets/gradientScaffold.dart';
import 'package:asi_gestion_absences/view/widgets/topBar.dart';
import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
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
                SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 86,
                      ),
                      StudentCell(
                        student: Event.todayEvents[0].attendees[0],
                      ),
                      StudentCell(
                        student: Event.todayEvents[0].attendees[1],
                      ),
                      StudentCell(
                        student: Event.todayEvents[0].attendees[2],
                      ),
                      StudentCell(
                        student: Event.todayEvents[0].attendees[3],
                      ),
                      StudentCell(
                        student: Event.todayEvents[0].attendees[4],
                      ),
                      StudentCell(
                        student: Event.todayEvents[0].attendees[5],
                      ),
                      StudentCell(
                        student: Event.todayEvents[0].attendees[0],
                      ),
                      StudentCell(
                        student: Event.todayEvents[0].attendees[1],
                      ),
                      StudentCell(
                        student: Event.todayEvents[0].attendees[2],
                      ),
                      StudentCell(
                        student: Event.todayEvents[0].attendees[3],
                      ),
                      StudentCell(
                        student: Event.todayEvents[0].attendees[4],
                      ),
                      StudentCell(
                        student: Event.todayEvents[0].attendees[5],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // tob bar
          TopBar(
            leftIcon: Icons.arrow_back,
            title: "Cours BDD",
          ),
        ],
      ),
    );
  }
}
