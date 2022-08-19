import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.light;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  changeTheme(ThemeMode mode){
    themeMode = mode;
    notifyListeners();
  }
}
class MyThemes{

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,colorScheme: ColorScheme.dark()
  );
  static final lightTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
      scaffoldBackgroundColor: Colors.white,colorScheme: ColorScheme.light()
  );
}