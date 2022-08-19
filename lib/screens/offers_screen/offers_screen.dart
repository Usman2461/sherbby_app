import 'dart:ui';

import 'package:flutter/material.dart';

import '../auth_screens/register_screen.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0))),
      //   title: Text(
      //     "Choisissez votre pack",
      //     style: TextStyle(
      //         color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.bold),
      //   ),
      // ),
      // body: SafeArea(
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         SizedBox(
      //           height: 30.0,
      //         ),
      //         packageContainer(
      //             context, Colors.orange, "PACK1", "5", "30", "2", "7200",
      //             () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => RegisterScreen()));
      //         }),
      //         packageContainer(context, Color(0xff2c2b2b), "PACK2", "7", "45",
      //             "3", "12600", () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => RegisterScreen()));
      //         }),
      //         packageContainer(
      //             context, Colors.redAccent, "PACK3", "15", "60", "4", "14800", () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => RegisterScreen()));
      //         }),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  packageContainer(context, color, packname, images, jours, remontees, fcfa,
      Function onTap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Card(
          shape: RoundedRectangleBorder(    borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20.0),
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
            bottomLeft: Radius.circular(8.0),
          ),),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                ),
                border: Border.all(color: Colors.black)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: color,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    packname,
                    style: TextStyle(
                      color: Colors.white,
                        fontWeight: FontWeight.bold, fontSize: 32.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                      children: [
                        Text("You will get : ",),
                        Text("$images Images",),
                      ],
                    ),
                    Text("Jours : $jours"),
                    Text("remontees : $remontees remontees"),
                    Text("FCfa : $fcfa")
                  ],),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
