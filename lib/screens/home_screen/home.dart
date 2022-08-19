import 'package:flutter/material.dart';
import 'package:sherbby_app/widgets/homePage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(),
        appBar: AppBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0))),
          leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: ImageIcon(
                  AssetImage("assets/images/drawericon.png"),
                  color: Colors.green,
                ),
              );
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search,color: Colors.green,
              size: 32,),
            )
          ],
          backgroundColor: Colors.white,
          title: Image(image: AssetImage("assets/images/iconsherby.png"),height: 25, width: 25,),
          centerTitle: true,
          // bottom: PreferredSize(
          //   preferredSize: Size(MediaQuery.of(context).size.width,50),
          //   child: Card(
          //     elevation: 0.0,
          //     clipBehavior: Clip.hardEdge,
          //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0))),
          //
          //     child: TabBar(
          //       isScrollable: true,
          //       labelColor: Colors.green,
          //       indicatorColor: Colors.green,
          //       indicatorWeight: 8.0,
          //       unselectedLabelColor: Colors.grey,
          //       tabs: [
          //         Tab(
          //           text: "Tout",
          //         ),
          //         Tab(
          //           text: "Arts / Culture",
          //         ),
          //         Tab(
          //           text: "Maisons",
          //         ),
          //         Tab(
          //           text: "Electroniques",
          //         ),
          //         Tab(
          //           text: "Dresses",
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ),
        // body: TabBarView(
        //   children: [
        //     HomePage(),
        //     HomePage(),
        //     HomePage(),
        //     HomePage(),
        //     HomePage(),
        //   ],
        // ),
      ),
    );
  }
}
