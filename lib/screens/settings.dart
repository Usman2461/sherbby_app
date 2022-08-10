import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sherbby_app/screens/home_screen/home.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  void onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("SHERBBY",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
        centerTitle: true,
      ),
      bottomNavigationBar: bottomNavigationBar(),
      drawer: Drawer(

      ),
      extendBody: true,
      body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: tabController,
          children: [


          ]),

    );
  }

  SizedBox bottomNavigationBar() {
    return SizedBox(
      height: Platform.isAndroid ? kBottomNavigationBarHeight : 90,
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: ImageIcon(
            AssetImage("assets/images/nav1.png"),
          ),
              label: "Home"),
          BottomNavigationBarItem(icon: ImageIcon(
            AssetImage("assets/images/nav2.png"),
          ), label: "Notification"),
          BottomNavigationBarItem(icon: ImageIcon(
            AssetImage("assets/images/nav3.png"),
          ), label: "Camera"),
          BottomNavigationBarItem(icon: ImageIcon(
            AssetImage("assets/images/nav4.png"),
          ), label: "Contact Us"),

        ],
        iconSize: 30,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.blueAccent,
        selectedItemColor: Colors.blueAccent,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 12.0,
        ),
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
            tabController!.index = selectedIndex;
          });
        },
      ),
    );
  }
}
