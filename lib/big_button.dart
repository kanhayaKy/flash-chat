import 'package:flutter/material.dart';

class BigButtons extends StatelessWidget {


  BigButtons({this.buttonColor,this.onpressed,this.text});
  final Color buttonColor;
  final void Function() onpressed;
  final Text text;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed:onpressed,
          minWidth: 200.0,
          height: 42.0,
          child: text,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
