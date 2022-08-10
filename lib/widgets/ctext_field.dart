import 'package:flutter/material.dart';

class CTextField extends StatefulWidget {
  String title;
  bool isObscure;



  CTextField({Key? key,required this.title,required this.isObscure}) : super(key: key);

  @override
  State<CTextField> createState() => _CTextFieldState();
}

class _CTextFieldState extends State<CTextField> {
  bool _passwordVisible=false;
  @override
  void initState() {
    _passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,style: TextStyle(color: Colors.grey.shade600),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          autofocus: true,
          keyboardType: TextInputType.text,
          obscureText: widget.isObscure?!_passwordVisible:false,//This will
          cursorColor: Colors.black,
          cursorHeight: 28,
          decoration: InputDecoration(
              fillColor: Colors.grey.shade200,
              filled: true,
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 15.0),
            suffixIcon: widget.isObscure?IconButton(
              icon: Icon(
                // Based on passwordVisible state choose the icon
                _passwordVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: Colors.grey,
              ),
              onPressed: () {
                // Update the state i.e. toogle the state of passwordVisible variable
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
            ):null,
          ),
        ),
      ],
    );
  }
}
