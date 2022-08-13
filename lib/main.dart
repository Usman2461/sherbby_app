import 'package:flutter/material.dart';
import 'package:sherbby_app/screens/auth_screens/forget_password.dart';
import 'package:sherbby_app/screens/splash_screen/splashscreen.dart';

import 'l10n/l10n.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      supportedLocales: L10n.all,
    );
  }
}
