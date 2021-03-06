import 'package:asi_gestion_absences/controller/themeController.dart';
import 'package:asi_gestion_absences/view/pages/event_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

import 'view/pages/login_page.dart';
import 'view/pages/home_page.dart';

void main() {
  // to prevent banding and color limitation to 32 bits
  Paint.enableDithering = true;
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeController>(
        create: (_) => (SchedulerBinding.instance.window.platformBrightness ==
                Brightness.dark)
            ? ThemeController(ThemeController.lightTheme)
            : ThemeController(ThemeController.darkTheme),
        child: AsiAPP());
  }
}

class AsiAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeController>(context);
    return MaterialApp(
      title: 'ASI Absence Checker',
      theme: theme.getTheme(),
      routes: {
        "/homePage": (context) => HomePage(),
        EventPage.routeName: (context) => EventPage(),
      },
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
