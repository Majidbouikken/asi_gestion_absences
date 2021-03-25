import 'package:asi_gestion_absences/controller/themeController.dart';
import 'package:asi_gestion_absences/view/home_page.dart';
import 'package:asi_gestion_absences/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

import 'view/login_page.dart';

void main(){
  // to prevent banding and color limitation to 32 bits
  Paint.enableDithering = true;
  runApp(MainApp());
}

class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return ChangeNotifierProvider<ThemeController>(
          create: (_) => (SchedulerBinding.instance.window.platformBrightness ==
          Brightness.dark)
          ? ThemeController(ThemeController.lightTheme)
          : ThemeController(ThemeController.darkTheme),
    child: AsiAPP());}
}

class AsiAPP extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeController>(context);
    return MaterialApp(
      title: 'ASI Absence Checker',
      theme: theme.getTheme(),
      home: HomePage(),
    );
  }

}