import 'package:flutter/material.dart';

class GradientScaffold extends StatelessWidget {
  final Widget child;
  final Drawer drawer;

  const GradientScaffold({Key key, this.child, this.drawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
        drawer: this.drawer,
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Theme.of(context).backgroundColor,
              Theme.of(context).bottomAppBarColor
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: SafeArea(
                child: Container(
              child: this.child,
            ))));
  }
}
