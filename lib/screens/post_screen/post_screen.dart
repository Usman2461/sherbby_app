import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage("assets/images/bagpro.png"),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  right: 10,
                  top: 100,
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.favorite_border),
                        backgroundColor: Colors.black45,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        child: Icon(Icons.share),
                        backgroundColor: Colors.black45,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        child: Icon(Icons.message_outlined),
                        backgroundColor: Colors.black45,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellowAccent),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vendu par",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 50.0,
                              backgroundImage:
                              AssetImage("assets/images/profiledp.png"),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "MOUNA DESIGN",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "+22676342323",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  "Denoncer un utilisateur",
                                  style: TextStyle(fontSize: 12.0),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/images/instagramc.png"),
                                      width: 30,
                                      height: 30.0,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Image(
                                      image: AssetImage(
                                          "assets/images/facebookc.png"),
                                      width: 30,
                                      height: 30.0,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Image(
                                      image: AssetImage(
                                          "assets/images/twitter.png"),
                                      width: 30,
                                      height: 30.0,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Image(
                                      image: AssetImage(
                                          "assets/images/tiktok.png"),
                                      width: 30,
                                      height: 30.0,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("PRODUITS SIMILAIRES", style: TextStyle(color: Colors.black),),
                      style: ElevatedButton.styleFrom(primary: Colors.white,
                          shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black))),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(onPressed: (){}, child: Text("Button")))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
