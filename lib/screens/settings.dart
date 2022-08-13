import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sherbby_app/screens/home_screen/home.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: globalKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: Text(
            "SHERBBY",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Annonces",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                ListTile(
                  leading: Image(image: AssetImage("assets/images/nav1.png")),
                  title: Text(
                    "Mes annonces",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                ListTile(
                  leading: Image(image: AssetImage("assets/images/nav1.png")),
                  title: Text(
                    "Mes annonces",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
