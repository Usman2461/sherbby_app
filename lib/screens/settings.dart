import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sherbby_app/screens/home_screen/home.dart';

import '../widgets/settings_tile.dart';

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
                SizedBox(height: 10.0,),
                SettingsTile(iconImg: 'set1.png', text: 'Mes annonces',),
                SettingsTile(iconImg: 'set2.png', text: 'Mes favoris',),
                Text(
                  "Reglages",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                SizedBox(height: 10.0,),
                SettingsTile(iconImg: 'set3.png', text: 'Photo',),
                SettingsTile(iconImg: 'set4.png', text: 'Nom',),
                SettingsTile(iconImg: 'set5.png', text: 'Phone',),
                SettingsTile(iconImg: 'set6.png', text: 'Email',),
                SettingsTile(iconImg: 'set7.png', text: 'Mot de passe',),
                SettingsTile(iconImg: 'set9.png', text: 'Notifications',),
                SettingsTile(iconImg: 'set10.png', text: 'Supprimer le compte',),
              ],
            ),
          ),
        ));
  }
}
