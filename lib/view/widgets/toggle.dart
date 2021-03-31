import 'package:flutter/material.dart';

class PresenceToggle extends StatefulWidget {
  @override
  _PresenceToggleState createState() => _PresenceToggleState();
}

class _PresenceToggleState extends State<PresenceToggle> {
  bool value;

  @override
  void initState() {
    value = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          value = !value;
        });
      },
      child: Container(
        width: 48,
        height: 32,
        decoration: BoxDecoration(
            color: Colors.black45, borderRadius: BorderRadius.circular(8)),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 100),
          margin: EdgeInsets.only(
              top: 4, bottom: 4, right: value ? 20 : 4, left: value ? 4 : 20),
          decoration: BoxDecoration(
              color: value
                  ? Theme.of(context).buttonColor
                  : Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(6)),
          child: Icon(
            value ? Icons.star : Icons.check,
            size: 16,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
