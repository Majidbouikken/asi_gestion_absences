import 'package:asi_gestion_absences/model/event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'eventWidget.dart';

class CalendarStepper extends StatelessWidget {
  final List<Event> todayEvents;
  final double _spaceBetweenDividers = 1.6;

  const CalendarStepper({Key key, this.todayEvents}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 120,
          child: Column(
            children: _timeStepBuilder(
                context, todayEvents.first.start, todayEvents.last.end),
          ),
        ),
        Column(
          children: _eventListBuilder(context, todayEvents),
        )
      ],
    );
  }

  // builds time steps
  List<Widget> _timeStepBuilder(
      BuildContext context, DateTime startTime, DateTime endTime) {
    List<Widget> _list = [];
    int _start = startTime.minute - (startTime.minute.remainder(15));
    int _duration = (endTime.hour * 60 + endTime.minute) -
        (startTime.hour * 60 + startTime.minute);
    int _end = (_duration % 15 == 0)
        ? _duration
        : _duration + (15 - endTime.minute.remainder(15));
    int _steps = (_end - _start) ~/ 15 + 3;
    int _startWithAnHourOrDivider = (() {
      if (_start % 60 == 0)
        return 0;
      else if (_start % 45 == 0)
        return 1;
      else if (_start % 30 == 0)
        return 2;
      else if (_start % 15 == 0) return 3;
    }());
    // divider types
    Column _smallStep = Column(
      children: [
        Container(
          width: 16,
          height: _spaceBetweenDividers * 7.5,
        ),
        Container(
          width: 16,
          height: _spaceBetweenDividers * 7.5,
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Theme.of(context).accentColor, width: 1))),
        )
      ],
    );
    Column _largeStep = Column(
      children: [
        Container(
          width: 32,
          height: _spaceBetweenDividers * 7.5,
        ),
        Container(
          width: 32,
          height: _spaceBetweenDividers * 7.5,
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Theme.of(context).accentColor, width: 1))),
        )
      ],
    );
    // an index to render the fitted divider type
    int _index = _startWithAnHourOrDivider;
    for (int i = 0; i < _steps; i++) {
      _list.add((() {
        if (_index == 0) {
          _index = 1;
          return Container(
            width: 64,
            height: _spaceBetweenDividers * 15,
            alignment: Alignment.center,
            child: Text(
              ((_startWithAnHourOrDivider == 0)
                  ? startTime.hour + i ~/ 4
                  : startTime.hour + i ~/ 4 + 1)
                  .toString() +
                  ":00",
              style: Theme.of(context).textTheme.headline6,
            ),
          );
        } else if (_index == 1) {
          _index = 2;
          return _smallStep;
        } else if (_index == 2) {
          _index = 3;
          return _largeStep;
        } else if (_index == 3) {
          _index = 0;
          return _smallStep;
        }
      }()));
    }
    return _list;
  }

  // returns a list of widgets to display Events horizontally
  List<Widget> _eventListBuilder(BuildContext context, List<Event> list) {
    List<Widget> _list = [
      SizedBox(
        height: _spaceBetweenDividers * 7.5,
      )
    ];
    for (int i = 0; i < list.length; i++) {
      if (i == 0 && list.first.start.minute.remainder(15) != 0)
        _list.add(SizedBox(
            height:
            _spaceBetweenDividers * list.first.start.minute.remainder(15)));
      else if (i != 0)
        _list.add(SizedBox(
          height: _spaceBetweenDividers *
              ((list[i].start.hour * 60 + list[i].start.minute) -
                  (list[i - 1].end.hour * 60 + list[i - 1].end.minute)),
        ));
      _list.add(EventWidget(
        event: list[i],
        spaceBetweenDividers: _spaceBetweenDividers,
        index: i,
      ));
    }
    return _list;
  }
}
