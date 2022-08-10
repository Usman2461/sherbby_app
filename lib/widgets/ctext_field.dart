import 'package:flutter/material.dart';

class CTextField extends StatelessWidget {
  String title;
  CTextField({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        TextField(decoration: InputDecoration(fillColor: Color(0xffe1e0e0), filled: true),),
      ],
    );
  }
}
