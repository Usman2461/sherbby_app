import 'package:flutter/material.dart';
class SettingsTile extends StatelessWidget {
  String text;
  IconData iconImg;
  SettingsTile({Key? key, required this.text, required this.iconImg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
          child: Row(children: [
            Icon(iconImg,size: 30,),
            SizedBox(width: 10.0,),
            Text(text, style: TextStyle(fontSize: 14.0),),
            Expanded(child: SizedBox()),
            Icon(Icons.arrow_forward_ios)
          ],),
        ),
      ),
    );
  }
}
