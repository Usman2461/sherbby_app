import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ChatButtonWidget extends StatefulWidget {
  var ontaped;
  var coolor;
  var text;
  ChatButtonWidget({Key? key,this.ontaped,this.coolor,this.text,}) : super(key: key);

  @override
  State<ChatButtonWidget> createState() => _ChatButtonWidgetState();
}

class _ChatButtonWidgetState extends State<ChatButtonWidget> {
  @override
  Widget build(BuildContext context) {
    var Hsize=MediaQuery.of(context).size.height;
    var Wsize=MediaQuery.of(context).size.width;
    return  Padding(
        padding: EdgeInsets.only(right:Hsize*0.01,left:Hsize*0.01 ),
        child: InkWell(
          onTap:
            widget.ontaped,
          child: Container(
            width: Wsize*0.3,
            decoration: new BoxDecoration(
                color: widget.coolor,
                borderRadius: new BorderRadius.circular(20)
            ),
            height: 35,
            child: Center(
              child: Text(
                widget.text,
                // "weiter".tr,
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
          ),
        )
    );
  }
}
