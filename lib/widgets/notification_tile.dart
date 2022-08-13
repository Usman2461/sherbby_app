import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  String notificationTitle;

  NotificationTile({Key? key, required this.notificationTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: Colors.green,
            border: Border.all(color: Colors.black, width: 2) )),
      title: Text(notificationTitle),
    );
  }
}
