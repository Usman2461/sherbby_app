import 'package:flutter/material.dart';
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("SHERBBY", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
        leading: Icon(Icons.menu, color: Colors.black,),
      ),
    );
  }
}
