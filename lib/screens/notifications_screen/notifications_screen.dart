import 'package:flutter/material.dart';

import '../../widgets/notification_tile.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key}) : super(key: key);

  List<String> notifications = ["Notification push sur les messages du cha", "Push notification avec Sherbby news",
    "Push notification avec Sherbby news",
    "Push notification avec Sherbby news",
    "Push notification avec Sherbby news",
    "Push notification avec Sherbby news",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0))),
        title: Text("SHERBBY",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0),),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 20.0,),
          ListView.builder(
            shrinkWrap: true,
              itemCount: notifications.length,
              itemBuilder: (context, index){
            return NotificationTile(notificationTitle: notifications[index],);
          })

        ],),
      ),
    );
  }
}
