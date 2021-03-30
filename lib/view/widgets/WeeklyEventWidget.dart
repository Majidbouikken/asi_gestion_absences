import 'package:asi_gestion_absences/model/event.dart';
import 'package:asi_gestion_absences/view/widgets/DailyEventWidget.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

class WeeklyEventWidget extends StatelessWidget {
  final List<Event> events;

  const WeeklyEventWidget({Key key, this.events}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _weeklyEventsBuilder(context, events);
  }

  Widget _weeklyEventsBuilder(BuildContext context, List<Event> list) {
    List<Widget> _list = [];
    List<Event> weekEvents = Event.getEventsBetweenTime(
        list,
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day,
                0, 0, 0)
            .add(Duration(days: 1)),
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day,
                0, 0, 0)
            .add(Duration(days: 7)));
    debugPrint(weekEvents.first.summary + "1");
    debugPrint(weekEvents.last.summary + "2");
    for (int i = 1; i < 7; i++) {
      if (Event.getEventsBetweenTime(
              weekEvents,
              DateTime(DateTime.now().year, DateTime.now().month,
                      DateTime.now().day, 0, 0, 0)
                  .add(Duration(days: i)),
              DateTime(DateTime.now().year, DateTime.now().month,
                      DateTime.now().day, 0, 0, 0)
                  .add(Duration(days: i + 1)))
          .isNotEmpty) {
        _list.add(DailyEventWidget(
            today: DateTime.now().add(Duration(days: i)),
            todayEvents: Event.getEventsBetweenTime(
                weekEvents,
                DateTime(DateTime.now().year, DateTime.now().month,
                        DateTime.now().day, 0, 0, 0)
                    .add(Duration(days: i)),
                DateTime(DateTime.now().year, DateTime.now().month,
                        DateTime.now().day, 0, 0, 0)
                    .add(Duration(days: i + 1)))));
      } else
        _list.add(SizedBox(
          height: 0,
        ));
    }
    // row widget
    //_row = ;
    return Column(
      children: _list,
    );
  }
}
