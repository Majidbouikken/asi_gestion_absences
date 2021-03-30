import 'package:flutter/material.dart';

import 'student.dart';

class Event {
  String id;
  String summary;
  String description;
  String location;
  DateTime start;
  DateTime end;
  String hangoutLink;
  List<Student> attendees;

  Event(this.id, this.summary, this.description, this.location, this.start,
      this.end, this.hangoutLink, this.attendees);

  // method to get events between a two defined dates
  static List<Event> getEventsBetweenTime(List<Event> list, DateTime startDate,
      DateTime endDate) {
    List<Event> _list = <Event>[];
    for (int i = 0; i < list.length; i++) {
      if (!(list[i].start.isAfter(startDate) &&
          list[i].start.isBefore(endDate))) _list.add (list[i]);
      i++;
    }
    return _list;
  }

  // todo: to delete
  // test list
  static List<Event> todayEvents = [
    Event(
      "1",
      "Cours BDD",
      "Modèle Relationel",
      "AP1",
      DateTime(2021, 3, 30, 13, 30),
      DateTime(2021, 3, 30, 15, 30),
      "url",
      <Student>[
        Student.testStudents[0],
        Student.testStudents[1],
        Student.testStudents[2],
        Student.testStudents[3],
        Student.testStudents[4],
        Student.testStudents[5],
        Student.testStudents[6],
        Student.testStudents[7],
      ],
    ),
    Event(
      "2",
      "Cours ASI",
      "Archimate",
      "A4",
      DateTime(2021, 3, 30, 15, 40),
      DateTime(2021, 3, 30, 17, 10),
      "url",
      <Student>[
        Student.testStudents[7],
        Student.testStudents[6],
        Student.testStudents[5],
        Student.testStudents[4],
        Student.testStudents[3],
        Student.testStudents[2],
      ],
    ),
  ];
  static List<Event> weekEvents = [
    Event(
      "3",
      "TD BDD",
      "Modèle Relationel",
      "AP1",
      DateTime(2021, 4, 1, 8, 30),
      DateTime(2021, 4, 1, 10, 30),
      "url",
      <Student>[
        Student.testStudents[0],
        Student.testStudents[1],
        Student.testStudents[2],
        Student.testStudents[3],
        Student.testStudents[4],
        Student.testStudents[5],
        Student.testStudents[6],
        Student.testStudents[7],
        Student.testStudents[0],
        Student.testStudents[1],
        Student.testStudents[2],
        Student.testStudents[3],
        Student.testStudents[4],
        Student.testStudents[5],
        Student.testStudents[6],
        Student.testStudents[7],
      ],
    ),
    Event(
      "4",
      "TD ASI",
      "Archimate",
      "A4",
      DateTime(2021, 4, 1, 13, 0),
      DateTime(2021, 4, 1, 15, 0),
      "url",
      <Student>[
        Student.testStudents[7],
        Student.testStudents[6],
        Student.testStudents[5],
        Student.testStudents[4],
        Student.testStudents[3],
        Student.testStudents[2],
        Student.testStudents[7],
        Student.testStudents[6],
        Student.testStudents[5],
        Student.testStudents[4],
        Student.testStudents[3],
        Student.testStudents[2],
      ],
    ),
    Event(
      "5",
      "Cours BDD",
      "SQL",
      "AP1",
      DateTime(2021, 4, 2, 10, 10),
      DateTime(2021, 4, 2, 12, 10),
      "url",
      <Student>[
        Student.testStudents[7],
        Student.testStudents[6],
        Student.testStudents[5],
        Student.testStudents[4],
        Student.testStudents[3],
        Student.testStudents[2],
        Student.testStudents[7],
        Student.testStudents[6],
        Student.testStudents[5],
        Student.testStudents[4],
        Student.testStudents[3],
        Student.testStudents[2],
        Student.testStudents[7],
        Student.testStudents[6],
        Student.testStudents[5],
        Student.testStudents[4],
        Student.testStudents[3],
        Student.testStudents[2],
        Student.testStudents[7],
        Student.testStudents[6],
        Student.testStudents[5],
        Student.testStudents[4],
        Student.testStudents[3],
        Student.testStudents[2],
      ],
    ),
    Event(
      "6",
      "Economie",
      "Entreprenariat",
      "AP1",
      DateTime(2021, 4, 8, 10, 40),
      DateTime(2021, 4, 8, 11, 40),
      "url",
      <Student>[
        Student.testStudents[5],
        Student.testStudents[4],
        Student.testStudents[3],
        Student.testStudents[2],
        Student.testStudents[7],
        Student.testStudents[6],
        Student.testStudents[5],
        Student.testStudents[4],
        Student.testStudents[3],
        Student.testStudents[2],
        Student.testStudents[7],
        Student.testStudents[6],
        Student.testStudents[5],
        Student.testStudents[4],
        Student.testStudents[3],
        Student.testStudents[2],
        Student.testStudents[7],
        Student.testStudents[6],
        Student.testStudents[5],
        Student.testStudents[4],
        Student.testStudents[3],
        Student.testStudents[2],
      ],
    ),
  ];
}
