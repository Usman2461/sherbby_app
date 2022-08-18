import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../chat_screen/chat_screen.dart';

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
                  width: MediaQuery.of(context).size.width,
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
                      GestureDetector(
                        onTap: () {
                          Share.share(
                              'check out my website https://example.com');
                        },
                        child: CircleAvatar(
                          child: Icon(Icons.share),
                          backgroundColor: Colors.black45,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatScreen()));
                        },
                        child: CircleAvatar(
                          child: Icon(Icons.message_outlined),
                          backgroundColor: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Container(

                  width: 240,
                  decoration: BoxDecoration(
                      color: Color(0xffd6e7d6),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(34.0), bottomRight: Radius.circular(34.0))),
                  padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 30.0,
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
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "+22676342323",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      _launchUrl();
                                    },
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/instagramc.png"),
                                      width: 20,
                                      height: 20.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      _launchUrl();
                                    },
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/facebookc.png"),
                                      width: 20,
                                      height: 20.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      _launchUrl();
                                    },
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/twitter.png"),
                                      width: 20,
                                      height: 20.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      _launchUrl();
                                    },
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/tiktok.png"),
                                      width: 20,
                                      height: 20.0,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      "Details",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "this is all the dummy tst of the description that is written over her efor, "
                          "his is all the dummy tst of the description that is written over her efor,"
                          "his is all the dummy tst of the description that is written over her efor "
                          "the demo purpose : ",
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Specifications : ",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    Text(
                      "this is all the dummy tst of the description that is written over her efor "
                          "the demo purpose : ",
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "PRODUITS SIMILAIRES",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Button"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    )
                  ],),
                )

              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse("https://qutechdevelopers.com/"))) {
      throw 'Could not launch "https://qutechdevelopers.com/"';
    }
  }
}
