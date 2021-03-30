import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.center,
        end: Alignment.bottomCenter,
        colors: [
          Theme.of(context).backgroundColor,
          Theme.of(context).backgroundColor.withOpacity(0),
        ],
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            size: 26,
          ),
          Icon(
            Icons.calendar_today,
            size: 26,
          ),
        ],
      ),
    );
  }
}
