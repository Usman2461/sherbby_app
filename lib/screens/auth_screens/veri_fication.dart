import 'package:flutter/material.dart';
import 'package:sherbby_app/screens/home_screen/home.dart';
import 'package:sherbby_app/screens/main_screen.dart';
import 'package:sherbby_app/screens/settings.dart';
import 'package:sherbby_app/widgets/button_widget.dart';
import 'package:sherbby_app/widgets/ctext_field.dart';

import '../add_post/add_post.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home()));
            },
            icon: ImageIcon(
              AssetImage("assets/images/homeicon.png"),
              color: Colors.grey,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 0.0,
              child: Container(
                height: 20,
                width: 115,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(30.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        icon: ImageIcon(
                          AssetImage("assets/images/threedots.png"),
                          color: Colors.grey,
                          size: 20,
                        )),
                    VerticalDivider(
                      thickness: 1,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      icon: Icon(
                        Icons.cancel,
                        size: 20,
                      ),
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Verification de securite",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                CTextField(
                  title: "Code de verification par numero de telephone",
                  isObscure: false,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Entrez le code a 6 chiffres envoye a 780***4499.",
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                ),
                SizedBox(height: 25,),
                Text("Passez a d'autres verifications",style: TextStyle(color: Colors.amber,fontSize: 16),),
                SizedBox(height: 20,),
                Text("Verification de securite indisponible ?",style: TextStyle(color: Colors.amber,fontSize: 16),),
                SizedBox(height: 30,),
                ButtonWidget(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddPost()));}, title: "Envoyer",colors: Colors.amberAccent,fontSize: 18,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
