import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});
  final IconData icon;
  final label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelDesign,
        )
      ],
    );
  }
}
