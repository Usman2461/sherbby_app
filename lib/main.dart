import 'package:flutter/material.dart';
import 'package:sherbby_app/providers/theme_provider.dart';
import 'package:sherbby_app/screens/auth_screens/forget_password.dart';
import 'package:sherbby_app/screens/splash_screen/splashscreen.dart';
import 'package:provider/provider.dart';
import 'l10n/l10n.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
       create: (BuildContext context) => ThemeProvider(),
      builder: (context, child, ){
         var provider = Provider.of<ThemeProvider>(context);
         return MaterialApp(
           debugShowCheckedModeBanner: false,
           title: 'Flutter Demo',
           themeMode: provider.themeMode,
           theme: MyThemes.lightTheme,
           darkTheme: MyThemes.darkTheme,
           home: SplashScreen(),
           supportedLocales: L10n.all,
         );
      }
    );
  }
}
