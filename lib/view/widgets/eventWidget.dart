import 'package:asi_gestion_absences/model/event.dart';
import 'package:asi_gestion_absences/model/student.dart';
import 'package:flutter/material.dart';

class EventWidget extends StatelessWidget {
  final Event event;
  final double spaceBetweenDividers;
  final int index;

  const EventWidget(
      {Key key, this.event, this.spaceBetweenDividers, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Duration duration = this.event.end.difference(this.event.start);
    return Container(
      height: (this.spaceBetweenDividers * duration.inMinutes),
      width: MediaQuery.of(context).size.width - 120,
      padding: EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        color: (this.index == 0)
            ? Theme.of(context).accentColor.withOpacity(0.2)
            : Colors.transparent,
        //border: Border(top: BorderSide(width: 1, color: Theme.of(context).accentColor),bottom:BorderSide(width: 1, color: Theme.of(context).accentColor))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            this.event.summary,
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                this.event.start.hour.toString() +
                    ":" +
                    this.event.start.minute.toString().padLeft(2, '0') +
                    " - " +
                    this.event.end.hour.toString() +
                    ":" +
                    this.event.end.minute.toString().padLeft(2, '0'),
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
          SizedBox(
            height: 8,
          ),
          Row(
            children: _studentsAvatarsBuilder(
                context, Student.getDisplayNames(this.event.attendees), 2),
          )
        ],
      ),
    );
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
