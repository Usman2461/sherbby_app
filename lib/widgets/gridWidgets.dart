import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

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
          clipBehavior: Clip.hardEdge,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
            topLeft: Radius.circular(8.0),
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(),
                child: Image(
                  image: AssetImage(
                    urlimage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      urltext,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "CFA50,000",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.green),
                    ),
                    Text(
                      "Ouagadougou - Burkina faso",
                      overflow: TextOverflow.ellipsis,
                    ),
                    RatingStars(
                      valueLabelVisibility: false,
                    )

                  ],
                ),
              )
            ],
          ),
        ));
  }
}
