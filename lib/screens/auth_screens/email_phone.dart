import 'package:flutter/material.dart';
import 'package:sherbby_app/screens/auth_screens/register_option.dart';
import 'package:sherbby_app/screens/home_screen/home.dart';

import '../../widgets/ctext_field.dart';

class EmailPhone extends StatefulWidget {
  const EmailPhone({Key? key}) : super(key: key);

  @override
  State<EmailPhone> createState() => _EmailPhoneState();
}

class _EmailPhoneState extends State<EmailPhone> {
  int tabindex = 0;
  bool isChecked = false;

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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Home()));
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
                  SizedBox(
                    height: 20.0,
                  ),
                  TabBar(
                    indicatorColor: Colors.transparent,
                    isScrollable: true,
                    onTap: (index) {
                      setState(() {
                        tabindex = index;
                      });
                    },
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey.shade400,
                    tabs: [
                      Card(
                          elevation: 0.0,
                          color: tabindex == 0
                              ? Colors.grey.shade300
                              : Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, left: 12.0, right: 12.0, bottom: 8.0),
                            child: Text("E-mail",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                          )),
                      Card(
                        color:
                            tabindex == 1 ? Colors.grey.shade300 : Colors.white,
                        elevation: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Numero de telephone",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
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
    return Container(
      width: double.maxFinite,
      height: 400,
      child: Column(children: [
        CTextField(
          title: 'E-mail',
          isObscure: false,
        ),
        SizedBox(
          height: 25,
        ),
        CTextField(
          title: "Mot de passe",
          isObscure: true,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ID de parrainage (facultatif)",
              style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
              size: 28,
              color: Colors.grey.shade500,
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.amber,
              value: isChecked,
              shape: CircleBorder(),
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),

          ],
        )
      ]),
    );
  }
}
