import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final color;
  final textColor;
  final buttonText;

   const MyButton({Key? key, this.color, this.textColor, this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(buttonText, style: TextStyle(color: textColor),),
            ),
          ),
        ),
      ),
    );
  }
}
