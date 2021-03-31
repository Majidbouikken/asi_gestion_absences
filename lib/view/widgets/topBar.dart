import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final Function onLeftTap;
  final Function onRightTap;

  const TopBar(
      {Key key, this.leftIcon, this.rightIcon, this.onLeftTap, this.onRightTap})
      : super(key: key);

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
            GestureDetector(
                child: Icon(
                  this.leftIcon,
                  size: 26,
                  color: Theme.of(context).accentColor,
                ),
                onTap: this.onLeftTap),
            (this.rightIcon != null)
                ? GestureDetector(
                    child: Icon(
                      this.rightIcon,
                      size: 26,
                      color: Theme.of(context).accentColor,
                    ),
                    onTap: this.onRightTap)
                : Spacer(),
          ],
        ));
  }
}
