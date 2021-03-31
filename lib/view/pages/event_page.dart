import 'package:asi_gestion_absences/model/event.dart';
import 'package:asi_gestion_absences/model/student.dart';
import 'package:asi_gestion_absences/view/widgets/event/studentCell.dart';
import 'package:asi_gestion_absences/view/widgets/gradientScaffold.dart';
import 'package:asi_gestion_absences/view/widgets/topBar.dart';
import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    final EventPageArguemnts args = ModalRoute.of(context).settings.arguments;

    Duration duration = args.event.end.difference(args.event.start);
    List<Widget> children = _studentsCells(args.event.attendees);
    children.insertAll(0, [
      SizedBox(
        height: 86,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            args.event.summary,
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                args.event.start.hour.toString() +
                    ":" +
                    args.event.start.minute.toString().padLeft(2, '0') +
                    " - " +
                    args.event.end.hour.toString() +
                    ":" +
                    args.event.end.minute.toString().padLeft(2, '0'),
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                (() {
                  // calculate difference between start and end
                  String durationString = "";
                  int minutes = (duration.inMinutes - duration.inHours * 60);
                  durationString = duration.inHours.toString() +
                      "h " +
                      minutes.toString().padLeft(2, '0') +
                      "m";
                  return durationString;
                }()),
                style: Theme.of(context).textTheme.headline5,
              )
            ],
          ),
        ],
      ),
    ]);
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
            title: args.event.summary,
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
