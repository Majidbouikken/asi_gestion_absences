import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;

  const TopBar({Key key, this.leftIcon, this.rightIcon}) : super(key: key);

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
              this.leftIcon,
              size: 26,
            ),
            (this.rightIcon != null)
                ? Icon(
                    this.rightIcon,
                    size: 26,
                  )
                : Spacer(),
          ],
        ));
  }
}
