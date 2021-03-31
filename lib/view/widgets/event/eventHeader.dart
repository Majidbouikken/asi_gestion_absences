import 'package:asi_gestion_absences/model/event.dart';
import 'package:flutter/material.dart';

class EventHeader extends StatelessWidget {
  final Event event;

  const EventHeader({Key key, this.event}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Duration duration = this.event.end.difference(this.event.start);
    return
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 86,
              ),
              Text(
                this.event.summary,
                style: Theme.of(context).textTheme.headline1,
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
                    style: Theme.of(context).textTheme.headline4,
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
                    style: Theme.of(context).textTheme.headline3,
                  )
                ],
              ),
            ],
          ),
        );
  }
}