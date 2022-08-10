import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridWidget extends StatelessWidget {
  String urlimage;
  String urltext;
  Function ontap;

  GridWidget(
      {Key? key,
      required this.urlimage,
      required this.urltext,
      required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          ontap();
        },
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image(
                    image: AssetImage(
                      urlimage,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  urltext,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  width: 55,
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "4.5",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Text("CFA50,000", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.green),),
                Text("Ouagadougou - Burkina faso", overflow: TextOverflow.ellipsis,)
              ],
            ),
          ),
        ));
  }
}
