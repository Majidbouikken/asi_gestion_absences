import 'package:asi_gestion_absences/model/student.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../model/event.dart';

class EventList extends StatelessWidget {
  final List<Event> events;

  const EventList({Key key, this.events}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _eventListBuilder(context, events),
    );
  }

  // returns a list of widgets to display Events horizontally
  List<Widget> _eventListBuilder(BuildContext context, List<Event> list) {
    List<Widget> _list = [];
    for (int i = 0; i < list.length; i++) {
      Duration duration = list[i].end.difference(list[i].start);
      _list.add(Container(
        height: (12 * duration.inMinutes / 10),
        width: MediaQuery.of(context).size.width - 120,
        padding: EdgeInsets.symmetric(horizontal: 32),
        color: (i == 0)
            ? Theme.of(context).accentColor.withOpacity(0.2)
            : Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              list[i].summary,
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  list[i].start.hour.toString() +
                      ":" +
                      list[i].start.minute.toString() +
                      " - " +
                      list[i].end.hour.toString() +
                      ":" +
                      list[i].end.minute.toString(),
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  (() {
                    // calculate difference between start and end
                    String durationString = "";
                    int minutes = (duration.inMinutes - duration.inHours * 60);
                    durationString = duration.inHours.toString() +
                        "h " +
                        minutes.toString() +
                        "m";
                    return durationString;
                  }()),
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: _studentsAvatarsBuilder(
                  context, Student.getDisplayNames(list[i].attendees), 2),
            )
          ],
        ),
      ));
    }
    return _list;
  }

  // returns a list of widgets to display Events horizontally
  List<Widget> _studentsAvatarsBuilder(
      BuildContext context, List<String> list, int maxDisplay) {
    List<Widget> _list = [];
    for (int i = 0; (i < list.length) && (i < maxDisplay); i++) {
      _list.add(
        Container(
          height: 24,
          width: 24,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.lightBlue, borderRadius: BorderRadius.circular(12)),
          child: Text(
            list[i].substring(0, 1),
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      );
      _list.add(SizedBox(
        width: 8,
      ));
    }
    if (maxDisplay < list.length)
      _list.add(
        Container(
          height: 24,
          width: 24,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.black45, borderRadius: BorderRadius.circular(12)),
          child: Text("+" + (list.length - maxDisplay).toString()),
        ),
      );
    return _list;
  }
}
