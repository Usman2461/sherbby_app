import 'package:flutter/material.dart';
class SettingsTile extends StatelessWidget {
  String text;
  String iconImg;
  SettingsTile({Key? key, required this.text, required this.iconImg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(children: [
        Image(image: AssetImage("assets/images/$iconImg"),width: 25, height: 25,),
        SizedBox(width: 10.0,),
        Text(text, style: TextStyle(fontSize: 14.0),)
      ],),
    );
  }
}
