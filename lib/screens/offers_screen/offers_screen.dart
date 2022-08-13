import 'dart:ui';

import 'package:flutter/material.dart';

import '../auth_screens/register_screen.dart';
class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child: Column(children: [
          Center(child: Text("Choisissez votre pack", style: TextStyle(color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.bold),)),
          SizedBox(height: 30.0,),
          packageContainer(context, Colors.redAccent, "PACK1", "5", "30", "2", "7200", (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
          }),
          packageContainer(context, Colors.yellowAccent, "PACK2", "7", "45", "3", "12600", (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
          }),
          packageContainer(context, Colors.green, "PACK3", "15", "60", "4", "14800", (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
          }),
        ],),),
      ),
    );
  }

  packageContainer(context, color, packname, images, jours, remontees, fcfa, Function onTap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          onTap();
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(14.0),color: color, border: Border.all(color: Colors.black)),

          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(packname, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),),
                Text("$images Images"),
                Text("$jours Jours"),
                Text("$remontees remontees"),
                Text("$fcfa FCfa")
              ],),
              Expanded(child: SizedBox()),
              Icon(Icons.workspace_premium, size: 40.0,),
              Text("Purchase Now",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}
