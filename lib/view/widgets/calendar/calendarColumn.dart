import 'package:asi_gestion_absences/model/event.dart';
import 'calendarColumnCell.dart';
import 'file:///C:/Users/Abdelmadjid/AndroidStudioProjects/asi_gestion_absences/lib/view/widgets/calendar/calendarTitle.dart';
import 'package:flutter/material.dart';

class CalendarColumn extends StatelessWidget {
  final int startingDay;
  final int endingDay;
  final String boldText;
  final String leanText;
  final List<Event> events;

  const CalendarColumn(
      {Key key, this.events, this.boldText, this.leanText, this.startingDay, this.endingDay})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> calendarColumn = _eventsByDayBuilder(context, events, this.startingDay, this.endingDay);
    // check if there are any days or not
    if (calendarColumn.isEmpty)
      return SizedBox(
        height: 0,
      );
    else {
      calendarColumn.insertAll(
        0,
        [
          CalendarTitle(
            boldText: this.boldText,
            leanText: this.leanText,
          ),
          SizedBox(
            height: 12,
          ),
        ],
      );
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: calendarColumn);
    }
  }

  // returns a list of events
  List<Widget> _eventsByDayBuilder(BuildContext context, List<Event> list, int startingDay, int endingDay) {
    List<Widget> _list = [];
    List<Event> weekEvents = Event.getEventsBetweenTime(list, startingDay, endingDay);
    for (int i = startingDay; i < endingDay; i++) {
      List<Event> _events = Event.getEventsBetweenTime(weekEvents, i, i + 1);
      if (_events.isNotEmpty)
        _list.add(CalendarColumnCell(
            today: DateTime.now().add(Duration(days: i)),
            todayEvents: _events));
    }
    return _list;
  }
}
