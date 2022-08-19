import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sherbby_app/widgets/gridWidgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../screens/post_screen/post_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;
  List<String> sliderimage = [
    "assets/images/banner.png",
    "assets/images/banner.png",
    "assets/images/banner.png",
    "assets/images/banner.png",
  ];

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return SingleChildScrollView(
      // child: Column(
      //   children: [
      //     SizedBox(
      //       height: 10,
      //     ),
      //     CarouselSlider.builder(
      //       options: CarouselOptions(
      //           height: 200,
      //           enlargeCenterPage: true,
      //           viewportFraction: 1.0,
      //           autoPlay: true,
      //           onPageChanged: (index, reason) =>
      //               setState(() => activeIndex = index)),
      //       itemCount: sliderimage.length,
      //       itemBuilder: (context, index, realIndex) {
      //         final imageslider = sliderimage[index];
      //         return buildImage(imageslider, index);
      //       },
      //     ),
      //     SizedBox(
      //       height: 5,
      //     ),
      //     buildIndicator(),
      //     SizedBox(
      //       height: 5,
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Text(
      //             "Tous les prodults disponibles",
      //             style: TextStyle(
      //                 fontSize: 18,
      //                 color: Colors.grey,
      //                 fontWeight: FontWeight.w500),
      //           ),
      //           Icon(Icons.arrow_forward_ios),
      //         ],
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 0),
      //       child: GridView(
      //         shrinkWrap: true,
      //         physics: NeverScrollableScrollPhysics(),
      //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: orientation == Orientation.landscape ? 4 : 2,
      //             mainAxisSpacing: 8,
      //             childAspectRatio: 20 / 28,
      //             crossAxisSpacing: 5),
      //         children: [
      //           GridWidget(
      //             urltext: 'Search Vehicle',
      //             ontap: () {
      //               Navigator.push(context, MaterialPageRoute(builder: (context)=>PostScreen()));
      //             },
      //             urlimage: 'assets/images/1.png',
      //           ),
      //           GridWidget(
      //             urltext: 'Add Request',
      //             ontap: () {
      //               Navigator.pushNamed(context, "/vtypeuser");
      //             },
      //             urlimage: 'assets/images/4.png',
      //           ),
      //           GridWidget(
      //             urltext: 'View Request',
      //             ontap: () {
      //               Navigator.pushNamed(context, "/requestScreenUser");
      //             },
      //             urlimage: 'assets/images/4.png',
      //           ),
      //           GridWidget(
      //             urltext: 'Settings',
      //             ontap: () {},
      //             urlimage: 'assets/images/4.png',
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }

  Widget buildImage(String sliderimage, int index) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage((sliderimage))),
          border: Border.all(width: 0, color: Colors.black54),
          color: Colors.grey,
        ),
        margin: EdgeInsets.symmetric(horizontal: 2),
        width: double.infinity,
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: sliderimage.length,
        effect: WormEffect(
          dotHeight: 12,
          activeDotColor: Colors.black45,
          dotWidth: 12,
          dotColor: Colors.grey.shade400,
        ),
      );
}
