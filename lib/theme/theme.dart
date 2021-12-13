import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  //

  ThemeData _currentTheme = ThemeData.light();
  bool _darkTheme = false;
  bool _lightTheme = true;

  bool get darkTheme => _darkTheme;
  bool get lightTheme => _lightTheme;
  ThemeData get currentTheme => _currentTheme;

  set darkTheme(bool value) {
    _lightTheme = false;
    _darkTheme = value;

    if (value) {
      _currentTheme = ThemeData.dark();
    } else {
      _currentTheme = CustomTheme().customThemeeee;
    }
    notifyListeners();
  }

  set lightTheme(bool value) {
    _lightTheme = value;
    _darkTheme = false;

    if (value) {
      _currentTheme = ThemeData.light();
    } else {
      _currentTheme = CustomTheme().customThemeeee;
    }
    notifyListeners();
  }
}

///////////////// custom theme
/// see all properties here :
/// ---->>>  https://api.flutter.dev/flutter/material/ThemeData-class.html
/// ---->>>  ctrl + click in [ThemeData] we can see all the information as well
class CustomTheme {

  ThemeData customThemeeee = ThemeData(

    // backgrounds theme
    scaffoldBackgroundColor: Colors.green,

    // drawer theme
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.amber,
    ),

    // texts theme
    textTheme: const TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(
      bodyColor: Colors.red,
      displayColor: Colors.green,
    ),

    // icons theme
    iconTheme: const IconThemeData(
      color: Colors.amber,
    ),
  );
}
