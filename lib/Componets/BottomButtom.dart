import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.label, this.onTap});
  String label;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            label,
            style: kLargeButtonText,
          ),
        ),
        height: kBottomContainerheight,
        color: kBottomContainerColor,
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}
