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
      backgroundColor: Color(0xffd6e7d6),
        key: globalKey,
        // appBar: AppBar(
        //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0))),
        //   backgroundColor: Colors.white,
        //   leading: IconButton(
        //     icon: Icon(
        //       Icons.menu,
        //       color: Colors.black,
        //     ),
        //     onPressed: () {},
        //   ),
        //   title: Text(
        //     "SHERBBY",
        //     style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        //   ),
        //   centerTitle: true,
        // ),
        // drawer: Drawer(),
        // body: SingleChildScrollView(
        //   child: Padding(
        //     padding: const EdgeInsets.all(12.0),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           "Annonces",
        //           style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        //         ),
        //         SizedBox(height: 10.0,),
        //         SettingsTile(iconImg: Icons.folder, text: 'Mes annonces',),
        //         SettingsTile(iconImg: Icons.bookmark, text: 'Mes favoris',),
        //         Text(
        //           "Reglages",
        //           style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        //         ),
        //         SizedBox(height: 10.0,),
        //         SettingsTile(iconImg:Icons.person_pin, text: 'Photo',),
        //         SettingsTile(iconImg: Icons.person, text: 'Nom',),
        //         SettingsTile(iconImg: Icons.phone, text: 'Phone',),
        //         SettingsTile(iconImg: Icons.email, text: 'Email',),
        //         SettingsTile(iconImg: Icons.lock, text: 'Mot de passe',),
        //         SettingsTile(iconImg: Icons.notifications, text: 'Notifications',),
        //         SettingsTile(iconImg: Icons.logout, text: 'Supprimer le compte',),
        //         SizedBox(height: 60.0,),
        //       ],
        //     ),
        //   ),
        // )
    );
  }
}
