import 'package:flutter/material.dart';
import 'package:sherbby_app/screens/auth_screens/register_option.dart';
import 'package:sherbby_app/screens/home_screen/home.dart';

import '../../widgets/ctext_field.dart';

class EmailPhone extends StatefulWidget {
  const EmailPhone({Key? key}) : super(key: key);

  @override
  State<EmailPhone> createState() => _EmailPhoneState();
}

class _EmailPhoneState extends State<EmailPhone>{

  int tabindex =0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
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

        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Creer un compte Binance",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                 TabBar(
                   indicatorColor: Colors.transparent,
                   isScrollable: true,
                  onTap: (index){
                     setState((){
                       tabindex=index;
                     });

                  },
                  // labelPadding: EdgeInsets.all(8.0),
                   labelColor: Colors.black,
                   unselectedLabelColor: Colors.grey.shade400,
                   tabs: [
                     Card(
                       elevation: 0.0,
                         color: tabindex==0?Colors.grey:Colors.white,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("Email"),
                         )),
                     Card(
                       color: tabindex==1?Colors.grey:Colors.white,
                       elevation: 0.0,
                       child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("Numero de telephone"),
                     ),)
                   ],
                 ),
                  Container(
                    width: double.maxFinite,
                    height: 400,
                    child: TabBarView(
                      children: [
                        registerViaEmail(),
                        Text("there"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  registerViaEmail() {
    return Container(child: Column(children: [
      CTextField(title: 'E-mail',),
    ],),);
  }
}
