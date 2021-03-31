import 'package:asi_gestion_absences/model/event.dart';
import 'package:asi_gestion_absences/model/student.dart';
import 'package:asi_gestion_absences/view/widgets/event/eventHeader.dart';
import 'package:asi_gestion_absences/view/widgets/event/studentCell.dart';
import 'package:asi_gestion_absences/view/widgets/gradientScaffold.dart';
import 'package:asi_gestion_absences/view/widgets/topBar.dart';
import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    final EventPageArguemnts args = ModalRoute.of(context).settings.arguments;

    List<Widget> children = _studentsCells(args.event.attendees);
    children.insert(0, EventHeader(
      event: args.event,
    ));
    children.add(SizedBox(
      height: 106,
    ));
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
                    children: children
                  ),
                ),
              ],
            ),
          ),
          // tob bar
          TopBar(
            leftIcon: Icons.arrow_back,
            onLeftTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  List<Widget> _studentsCells(List<Student> list) {
    List<Widget> _list = [];
    for (int i = 0; i < list.length; i++) {
      _list.add(
        StudentCell(student: list[i]),
      );
    }
    return _list;
  }
}

// event page arguments

class EventPageArguemnts {
  final Event event;

  EventPageArguemnts(this.event);
}
