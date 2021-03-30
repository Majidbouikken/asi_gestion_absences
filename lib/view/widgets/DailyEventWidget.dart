import 'package:asi_gestion_absences/model/event.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

class DailyEventWidget extends StatelessWidget {
  final DateTime today;
  final List<Event> todayEvents;

  const DailyEventWidget({Key key, this.today, this.todayEvents})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(style: TextStyle(fontSize: 30), children: [
                      TextSpan(
                          text: formatDate(this.today, [D]).substring(0, 1),
                          style: Theme.of(context).textTheme.headline1),
                    ])),
              ),
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: formatDate(this.today, [dd]),
                  style: Theme.of(context).textTheme.headline3),
              TextSpan(
                  text: " th", style: Theme.of(context).textTheme.headline4),
            ]))
          ],
        ),
        Column(
          children: _dailyEventsBuilder(context, this.todayEvents),
        )
      ],
    );
  }

  List<Widget> _dailyEventsBuilder(BuildContext context, List<Event> list) {
    List<Widget> _list = [];
    Duration duration;
    for (int i = 0; i < list.length; i++) {
      duration = list[i].end.difference(list[i].start);
      _list.add(Container(
        width: MediaQuery.of(context).size.width - 120,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
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
                      list[i].start.minute.toString().padLeft(2, '0') +
                      " - " +
                      list[i].end.hour.toString() +
                      ":" +
                      list[i].end.minute.toString().padLeft(2, '0'),
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
      ));
    }
    return _list;
  }
}
