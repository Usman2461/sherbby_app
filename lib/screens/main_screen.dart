import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sherbby_app/screens/auth_screens/register_screen.dart';
import 'package:sherbby_app/screens/home_screen/home.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>  with SingleTickerProviderStateMixin{
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
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: tabController,
          children: [
            Home(),
            Home(),
            Home(),
            Home(),
            RegisterScreen(),

          ]),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  SizedBox bottomNavigationBar() {
    return SizedBox(
      height: Platform.isAndroid ? kBottomNavigationBarHeight : 90,
      child: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:ImageIcon(
            AssetImage("assets/images/nav1.png"),
          ),
              label: "Home"),
          BottomNavigationBarItem(icon:ImageIcon(
            AssetImage("assets/images/nav2.png"),
          ), label: "Notification"),
          BottomNavigationBarItem(icon: ImageIcon(
            AssetImage("assets/images/nav3.png"),
          ), label: "Camera"),
          BottomNavigationBarItem(icon:ImageIcon(
            AssetImage("assets/images/nav4.png"),
          ), label: "Contact Us"),
          BottomNavigationBarItem(icon: ImageIcon(
            AssetImage("assets/images/nav5.png"),
          ), label: "Profile"),
        ],
        iconSize: 30,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
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
  }}