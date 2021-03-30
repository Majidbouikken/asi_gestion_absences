import 'package:asi_gestion_absences/model/student.dart';
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
      _list.add(Container(
        height: 160,
        width: MediaQuery.of(context).size.width - 120,
        padding: EdgeInsets.all(32),
        color: Theme.of(context).accentColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: list[i].start.hour.toString()),
                  TextSpan(text: ' - '),
                  TextSpan(text: list[i].end.hour.toString())
                ])),
                Text((list[i].end.hour - list[i].start.hour).toString())
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: _studentsAvatarsBuilder(
                  Student.getDisplayNames(list[i].attendees), 2),
            )
          ],
        ),
      ));
    }
    return _list;
  }

  // returns a list of widgets to display Events horizontally
  List<Widget> _studentsAvatarsBuilder(List<String> list, int maxDisplay) {
    List<Widget> _list = [];
    for (int i = 0; (i < list.length) && (i < maxDisplay); i++) {
      _list.add(
        Container(
          height: 24,
          width: 24,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.lightBlue, borderRadius: BorderRadius.circular(12)),
          child: Text(list[i].substring(0, 1)),
        ),
      );
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
