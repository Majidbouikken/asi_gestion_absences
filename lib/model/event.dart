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

  Event(this.id, this.summary, this.description, this.location, this.start, this.end, this.hangoutLink, this.attendees);

  // todo: to delete
  // test list
  static List<Event> todayEvents = [
    Event(
      "1",
      "Cours BDD",
      "Modèle Relationel",
      "AP1",
      DateTime(2021, 3, 31, 13, 30),
      DateTime(2021, 3, 31, 15, 30),
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
      DateTime(2021, 3, 31, 15, 40),
      DateTime(2021, 3, 31, 17, 10),
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
}