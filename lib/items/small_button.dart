import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final String btnText;
  final Color btnColor, fontColor;
  final Function onPressed;
  final double scaleFactor;

  SmallButton(this.btnText, this.onPressed,
      {this.btnColor = Colors.white, this.fontColor = Colors.black, this.scaleFactor = 1.3});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Card(
        color: btnColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
          child: Text(btnText,
              textScaleFactor: scaleFactor,
              textAlign: TextAlign.center,
              style: TextStyle(color: fontColor, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
