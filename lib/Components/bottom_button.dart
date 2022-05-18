import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onPressed, required this.buttonText});

  final Function() onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        color: kBottomBarColor,
        width: double.infinity,
        height: 70,
        child: Center(
          child: Text(
            buttonText,
            style: kLargeButtonStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
