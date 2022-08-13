import 'package:flutter/material.dart';

class AddPost2 extends StatelessWidget {
  const AddPost2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "SHERBBY",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.green),
              padding: EdgeInsets.all(10.0),
              child: Text("EN"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  height: 40.0,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Titre*",
                        border: OutlineInputBorder(borderSide: BorderSide())),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  height: 40.0,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.arrow_drop_down),
                        hintText: "Arts / Culture*",
                        border: OutlineInputBorder(borderSide: BorderSide())),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  height: 40.0,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Prix*",
                        border: OutlineInputBorder(borderSide: BorderSide())),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  height: 40.0,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Phone*",
                        border: OutlineInputBorder(borderSide: BorderSide())),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  height: 40.0,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "BURKINA FASO*",
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        border: OutlineInputBorder(borderSide: BorderSide())),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  height: 40.0,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Ville*",
                        border: OutlineInputBorder(borderSide: BorderSide())),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  height: 100.0,
                  child: TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                        hintText: "Description *",
                        border: OutlineInputBorder(borderSide: BorderSide())),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  height: 40.0,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Code de coupon",
                        suffixIcon: Icon(Icons.refresh),
                        border: OutlineInputBorder(borderSide: BorderSide())),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ORANGEMONY",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "OTP: *144*4*6*7500",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        height: 40.0,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Numbero de telephone orange*",
                              border: OutlineInputBorder(borderSide: BorderSide())),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        height: 40.0,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Code OTP*",
                              border: OutlineInputBorder(borderSide: BorderSide())),
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
                          child: Text("SOUMETTRE", style: TextStyle(color: Colors.black, fontSize: 12.0),),
                          style: ElevatedButton.styleFrom(primary: Colors.white,
                              shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(20.0))),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
