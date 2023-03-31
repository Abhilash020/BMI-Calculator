import 'package:flutter/material.dart';
import '../constants.dart';

class Bottombutton extends StatelessWidget {
  Bottombutton({required this.onTap, required this.buttontitle});
  final VoidCallback onTap;
  final String buttontitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttontitle,
            style: kbottomcontainerstyle,
          ),
        ),
        color: kbottomcontainercolor,
        margin: EdgeInsets.only(top: 10.0),
        height: kbottomcontainerheight,
        width: double.infinity,
      ),
    );
  }
}
