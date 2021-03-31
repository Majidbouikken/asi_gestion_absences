import 'package:flutter/material.dart';

class ThemeController with ChangeNotifier {
  ThemeData _themeData;

  // email colors
  static const List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.redAccent,
    Colors.deepOrangeAccent,
    Colors.deepPurpleAccent,
    Colors.teal
  ];

  ThemeController(this._themeData);

  ThemeData getTheme() => _themeData;

  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  static ThemeData lightTheme = ThemeData();

  static ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: DarkColorData.primary,
      accentColor: DarkColorData.accent,
      backgroundColor: DarkColorData.bg1,
      // this serves as the second background color
      bottomAppBarColor: DarkColorData.bg2,
      canvasColor: DarkColorData.bg2,
      buttonColor: DarkColorData.red,
      cardColor: DarkColorData.card,
      dividerColor: DarkColorData.divider,
      textTheme: TextTheme(
        headline1: TextStyle(
            fontFamily: 'GothicA1',
            fontWeight: FontWeight.w500,
            color: DarkColorData.primary,
            fontSize: 44),
        headline2: TextStyle(
            fontFamily: 'GothicA1',
            fontWeight: FontWeight.w200,
            color: DarkColorData.accent,
            fontSize: 44),
        headline3: TextStyle(
            fontFamily: 'GothicA1',
            fontWeight: FontWeight.w500,
            color: DarkColorData.primary,
            fontSize: 16),
        headline4: TextStyle(
            fontFamily: 'GothicA1',
            fontWeight: FontWeight.w500,
            color: DarkColorData.accent,
            fontSize: 16),
        headline5: TextStyle(
            fontFamily: 'GothicA1',
            fontWeight: FontWeight.w500,
            color: DarkColorData.primary,
            fontSize: 12),
        headline6: TextStyle(
            fontFamily: 'GothicA1',
            fontWeight: FontWeight.w500,
            color: DarkColorData.accent,
            fontSize: 12),
        button: TextStyle(
            fontFamily: 'GothicA1',
            fontWeight: FontWeight.w500,
            color: DarkColorData.primary,
            fontSize: 20),
      ));
}

class DarkColorData {
  static const Color primary = Color(0xffffffff);
  static const Color accent = Color(0xff536068);
  static const Color bg1 = Color(0xff091c27);
  static const Color bg2 = Color(0xff041017);
  static const Color card = Color(0xff0f2430);
  static const Color divider = Color(0xff1f303a);
  static const Color red = Color(0xffee5651);
}
