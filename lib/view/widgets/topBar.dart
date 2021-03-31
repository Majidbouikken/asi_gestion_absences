import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final String title;

  const TopBar({Key key, this.leftIcon, this.rightIcon, this.title = ""})
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
      child: (this.rightIcon != null)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  this.leftIcon,
                  size: 26,
                ),
                Icon(
                  this.rightIcon,
                  size: 26,
                ),
              ],
            )
          : Row(
              children: [
                Icon(
                  this.leftIcon,
                  size: 26,
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  this.title,
                  style: Theme.of(context).textTheme.headline1.copyWith(fontSize: 24),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
    );
  }
}
