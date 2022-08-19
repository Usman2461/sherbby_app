import 'package:flutter/material.dart';
import 'package:sherbby_app/screens/auth_screens/email_and_phone.dart';
import 'package:sherbby_app/screens/home_screen/home.dart';
import 'package:sherbby_app/widgets/button_widget.dart';

class RegisterConfirmation extends StatelessWidget {
  const RegisterConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      backgroundColor: Colors.white,
      // body: SafeArea(
      //   child: SingleChildScrollView(
      //     child: Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 24.0),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           SizedBox(height: 20.0,),
      //           Text(
      //             "Bienvenue sur Binance!",
      //             style: TextStyle(
      //                 color: Colors.black,
      //                 fontSize: 24,
      //                 fontWeight: FontWeight.bold),
      //           ),
      //           SizedBox(height: 20.0,),
      //           Text(
      //             "Avant de demarrer, veuillez saisir votre lieu de residence actuel",
      //             style: TextStyle(
      //                 color: Colors.grey.shade500,
      //                 fontSize: 16,
      //                 ),
      //           ),
      //           SizedBox(height: 20.0,),
      //           Text("Pays/Zone de residence",style: TextStyle(color: Colors.grey.shade600,fontSize: 16),),
      //           SizedBox(height: 10,),
      //           ListTile(
      //             tileColor: Colors.grey.shade300,
      //             leading: CircleAvatar(backgroundImage: AssetImage("assets/images/canadaflag.png"),radius: 12,),
      //             title: Text("Canada",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
      //             trailing: Icon(Icons.arrow_forward_ios_outlined),
      //
      //           ),
      //           SizedBox(height: 20,),
      //           Text("Le processus d'inscription peut etre modifie sur la base des informations que fournissez",style: TextStyle(color: Colors.grey.shade400,
      //             fontSize: 14,),),
      //           SizedBox(height: 30,),
      //           ButtonWidget(onTap: (){
      //             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EmailPhone()));
      //           }, title: "Confirmer",height: 60,colors: Colors.amberAccent,fontSize: 16,)
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
