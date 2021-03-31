import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  MenuButton({Key key, this.icon, this.title, this.subTitle, this.onTap}) : super(key: key);
  final IconData icon;
  final String title;
  final String subTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        padding: EdgeInsets.symmetric(
            vertical: (this.subTitle == null) ? 16 : 8, horizontal: 16),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        disabledColor: Colors.grey[350],
        disabledTextColor: Colors.grey[500],
        onPressed: this.onTap,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            this.icon == null
                ? SizedBox()
                : Icon(
              this.icon,
              size: 26,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(
              width: this.icon == null ? 8 : 16,
            ),
            this.subTitle == null
                ? Expanded(
              child: Text(
                this.title,
                textAlign: TextAlign.left,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontSize: 14),
                textScaleFactor: 1.2,
                overflow: TextOverflow.ellipsis,
              ),
            )
                : Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.title,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline4,
                    textScaleFactor: 1.2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    this.subTitle,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.caption,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              size: 24,
              color: Theme.of(context).accentColor,
            ),
          ],
        ));
  }
}

class SectionTitle extends StatelessWidget {
  SectionTitle({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 32, bottom: 8),
      child: Text(
        this.title,
        style: Theme.of(context).textTheme.headline3.copyWith(fontSize: 10),
      ),
    );
  }
}

class MenuDivider extends StatelessWidget {
  MenuDivider({Key key, this.sectionDivider, this.nonIconDivider})
      : super(key: key);
  final bool sectionDivider, nonIconDivider;

  @override
  Widget build(BuildContext context) {
    if (this.sectionDivider == true)
      return Divider(height: 1, color: Theme.of(context).dividerColor);
    else if (this.nonIconDivider == true)
      return Row(
        children: [
          SizedBox(width: 24),
          Expanded(
            child: Divider(height: 1, color: Theme.of(context).dividerColor),
          )
        ],
      );
    else
      return Row(
        children: [
          SizedBox(width: 52),
          Expanded(
            child: Divider(height: 1, color: Theme.of(context).dividerColor),
          )
        ],
      );
  }
}