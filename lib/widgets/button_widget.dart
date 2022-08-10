import 'package:flutter/material.dart';
class ButtonWidget extends StatelessWidget {
  Function onTap;
  String title;
  Color colors;
  double fontSize;
  double height;
  ButtonWidget({required this.onTap,required this.title, this.colors=  Colors.grey, this.height=50, this.fontSize = 14,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(onPressed: (){
     onTap();
      },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(colors),
          ),
          child: Text(title,style: TextStyle(color: Colors.black,fontSize: fontSize),)),
    );
  }
}
