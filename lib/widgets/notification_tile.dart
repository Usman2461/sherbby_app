import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  String notificationTitle;

  NotificationTile({Key? key, required this.notificationTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color(0xffd6e7d6),
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0))),
        child: ListTile(
          tileColor: Color(0xffd6e7d6),
          leading: CircleAvatar(child: Icon(Icons.notifications_active, color: Colors.green,),backgroundColor: Colors.white,),
          title: Text(notificationTitle),
        ),
      ),
    );
  }
}
