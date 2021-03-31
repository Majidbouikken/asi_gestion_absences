import 'package:asi_gestion_absences/controller/themeController.dart';
import 'package:asi_gestion_absences/model/event.dart';
import 'package:asi_gestion_absences/view/widgets/calendar/calendarColumn.dart';
import 'package:asi_gestion_absences/view/widgets/calendar/calendarStepper.dart';
import 'package:asi_gestion_absences/view/widgets/drawerComponents.dart';
import 'package:asi_gestion_absences/view/widgets/gradientScaffold.dart';
import 'package:asi_gestion_absences/view/widgets/topBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    ThemeController _themeChanger = Provider.of<ThemeController>(context);

    return GradientScaffold(
      scaffoldKey: _scaffoldKey,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                SectionTitle(
                  title: "SETTINGS",
                ),
                MenuButton(
                  icon: Icons.language,
                  title: "Language",
                  onTap: () {},
                ),
                MenuDivider(),
                MenuButton(
                  icon: (Theme.of(context).brightness == Brightness.dark)
                      ? Icons.wb_sunny
                      : Icons.wb_sunny_outlined,
                  title: (Theme.of(context).brightness == Brightness.dark)
                      ? "Light mode"
                      : "Dark mode",
                  onTap: () {
                    if (_themeChanger.getTheme().brightness == Brightness.light)
                      _themeChanger.setTheme(ThemeController.darkTheme);
                    else
                      _themeChanger.setTheme(ThemeController.lightTheme);
                  },
                ),
                MenuDivider(
                  sectionDivider: true,
                ),
                SectionTitle(
                  title: "SUPPORT & FEEDBACK",
                ),
                MenuButton(
                  icon: Icons.info_outline,
                  title: "FAQ",
                  onTap: () {},
                ),
                MenuDivider(),
                MenuButton(
                  icon: Icons.comment,
                  title: "Send us Feedback",
                  onTap: () {},
                ),
                MenuDivider(),
                MenuButton(
                  icon: Icons.shield,
                  title: "Terms & Privacy Policy",
                  onTap: () {},
                ),
                MenuDivider(
                  sectionDivider: true,
                ),
                SectionTitle(
                  title: "COMMUNITY",
                ),
                MenuButton(
                  icon: Icons.star,
                  title: "Rate ASI Absence manager",
                  onTap: () {},
                ),
                MenuDivider(),
                MenuButton(
                  icon: Icons.share,
                  title: "Share with Freinds",
                  onTap: () {},
                ),
                MenuDivider(
                  sectionDivider: true,
                ),
                SizedBox(height: 64),
                /*SvgPicture.asset(
    "assets/logo.svg",
    color: Theme.of(context).primaryColor,
    width: 12,
    ),*/
                SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "ASI Absence Manager - Version 0.0.1",
                        style: Theme.of(context).textTheme.headline4,
                        textScaleFactor: 0.75,
                      ),
                      Text(
                        "Ecole nationale Supérieure d'Informatique المدرسة الوطنية العليا للإعلام الآلي\nBPM68 16270, Oued Smar, Alger. Tél : 023939132 ; Fax : 023939142 ; http://www.esi.dz",
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                        textScaleFactor: 0.75,
                      ),
                    ],
                  )
                ),
                SizedBox(
                  height: 16,
                ),
              ])),
        ),
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 106,
                ),

                // today's events
                // using calendar stepper
                CalendarStepper(
                  boldText: "Today,",
                  leanText: DateTime.now().day.toString() + "th",
                  todayEvents: Event.todayEvents,
                ),

                // this week events
                // using calendar column
                CalendarColumn(
                  boldText: "This",
                  leanText: "Week",
                  startingDay: 1,
                  endingDay: 7,
                  events: Event.weekEvents,
                ),

                // this month events
                // using calendar column
                CalendarColumn(
                  boldText: "This",
                  leanText: "month",
                  startingDay: 7,
                  endingDay: 30,
                  events: Event.weekEvents,
                ),
                SizedBox(
                  height: 106,
                )
              ],
            ),
          ),
          // add app bar
          TopBar(
            leftIcon: Icons.menu,
            rightIcon: Icons.calendar_today_sharp,
            onLeftTap: () => _scaffoldKey.currentState.openDrawer(),
          ),
          // add action button
          Align(
              alignment: Alignment.bottomRight,
              child: Material(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(8)),
                  elevation: 0,
                  color: Theme.of(context).buttonColor,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        height: 80,
                        width: 80,
                        alignment: Alignment.center,
                        child: Icon(Icons.add)),
                  )))
        ],
      ),
    );
  }
}
