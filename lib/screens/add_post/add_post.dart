import 'package:flutter/material.dart';

import 'add_post2.dart';
class AddPost extends StatelessWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu, color: Colors.black,),
        title: Text("SHERBBY", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0),color: Colors.green),
              padding:EdgeInsets.all(10.0),child: Text("EN"),),
          )
        ],
      ),
      body: SingleChildScrollView(child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          SizedBox(height: 10.0,),
          Center(child: Text("Mot de passe oublle?")),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 40.0,
              child: TextField(
                decoration: InputDecoration(hintText: "+2260000000", border: OutlineInputBorder(borderSide: BorderSide())),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("CLIQUEZ POUR VERIFIER VOTRE NUMERO DE TELE...", style: TextStyle(color: Colors.black, fontSize: 12.0),),
                style: ElevatedButton.styleFrom(primary: Colors.white,
                    shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 40.0,
              child: TextField(
                decoration: InputDecoration(hintText: "Entrer le code de verification *", border: OutlineInputBorder(borderSide: BorderSide())),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 40.0,
              child: TextField(
                decoration: InputDecoration(hintText: "Mot de Passe *", border: OutlineInputBorder(borderSide: BorderSide())),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 40.0,
              child: TextField(
                decoration: InputDecoration(hintText: "Confirmer votre mot de passen *", border: OutlineInputBorder(borderSide: BorderSide())),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddPost2()));
                },
                child: Text("REINITIALISER LE MOT DE PASSE", style: TextStyle(color: Colors.black, fontSize: 12.0),),
                style: ElevatedButton.styleFrom(primary: Colors.white,
                    shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black))),
              ),
            ),
          ),

        ],),
      ),),
    );
  }
}
