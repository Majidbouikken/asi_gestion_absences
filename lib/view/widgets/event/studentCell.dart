import 'dart:math';

import 'package:asi_gestion_absences/controller/themeController.dart';
import 'package:asi_gestion_absences/model/student.dart';
import 'package:asi_gestion_absences/view/widgets/toggle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StudentCell extends StatelessWidget {
  final Student student;

  const StudentCell({Key key, this.student}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      padding: EdgeInsets.symmetric(horizontal: 40),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            height: 48,
            width: 48,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: ThemeController.colors[Random().nextInt(ThemeController.colors.length)],
                borderRadius: BorderRadius.circular(24)),
            child: Text(
              this.student.displayName.substring(0, 1),
              style:
                  Theme.of(context).textTheme.headline3.copyWith(fontSize: 32, color: Colors.white),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.student.displayName,
                  style: Theme.of(context).textTheme.headline3,
                  overflow: TextOverflow.visible,
                ),
                Text(
                  this.student.email,
                  style: Theme.of(context).textTheme.headline6,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          // a toggle to mark presence manually
          PresenceToggle(),
        ],
      ),
    );
  }
}
