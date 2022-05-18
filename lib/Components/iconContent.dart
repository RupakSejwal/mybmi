import 'package:flutter/material.dart';
import '../constants.dart';

class iconContent extends StatelessWidget {
  iconContent({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
