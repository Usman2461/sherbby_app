import 'package:flutter/material.dart';

import '../../widgets/notification_tile.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key}) : super(key: key);

  List<String> notifications = ["Notification push sur les messages du cha", "Push notification avec Sherbby news", "Push notification avec Sherbby news"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text("SHERBBY",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0),),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(child: Text("Parametres de notification", style: TextStyle(fontSize: 16),)),
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
