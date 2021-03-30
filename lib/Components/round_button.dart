import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String buttontext;
  final Color colour;
  final Function onpressed;
  RoundedButton({this.colour, this.buttontext, @required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onpressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(buttontext),
        ),
      ),
    );
  }
}
