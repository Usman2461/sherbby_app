import 'package:flutter/material.dart';
import 'package:sherbby_app/screens/auth_screens/registeration_confirmation.dart';

class RegisterOption extends StatelessWidget {
  const RegisterOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        width: double.infinity,
                        child: Image(
                          image: AssetImage("assets/images/sherycom2.png"),
                          fit: BoxFit.contain,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bienvenue sur Binance!",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterConfirmation()));
                                },
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero,
                                          side: BorderSide(
                                              color: Colors.grey.shade300))),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey.shade300),
                                  elevation: MaterialStateProperty.all(0.0),
                                ),
                                child: Text(
                                  "Inscrivez-vous par telephone ou par e-mail",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Divider(
                                  color: Colors.grey.shade300,
                                  thickness: 1,
                                  endIndent: 5,
                                ),
                              ),
                              Text(
                                "Ou",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                              Flexible(
                                  child: Divider(
                                color: Colors.grey.shade300,
                                thickness: 1,
                                indent: 5,
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero,
                                          side: BorderSide(
                                              color: Colors.grey.shade300))),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  elevation: MaterialStateProperty.all(0.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/images/googleicon.png"),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Continuez avec Google",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text(
                                "Deja inscrit ?",
                                style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                child: Text(
                                  " Se connecter",
                                  style: TextStyle(
                                      color: Colors.brown.shade500,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 30.0,
                left: 4,
                right: 4,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "En creat un compte, vous acceptez nos ",
                          style: TextStyle(
                              color: Colors.grey.shade400, fontSize: 14)),
                      TextSpan(
                          text: "Conditions\n generales ",
                          style: TextStyle(
                              color: Colors.brown.shade500, fontSize: 14)),
                      TextSpan(
                          text: "et nos",
                          style: TextStyle(
                              color: Colors.grey.shade400, fontSize: 14)),
                      TextSpan(
                          text:
                              "Directives en matiere de protection des donnees",
                          style: TextStyle(
                              color: Colors.brown.shade500, fontSize: 14)),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
