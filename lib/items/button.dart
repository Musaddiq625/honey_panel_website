import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final Function onPressed;
  final String btnText;
  MyButton(this.onPressed, {this.btnText='button'});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:()=> onPressed(), child: Text(btnText));
  }
}
