import 'package:booksmandala/constants.dart';
import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  final double? iconSize;
  final IconData? iconData;
  final double? paddingSize;

  const CustomButtons({this.iconData, this.iconSize, this.paddingSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddingSize!),
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: kSliderColor)),
      child: Center(
        child: Icon(
          iconData,
          color: kSliderColor,
          size: iconSize,
        ),
      ),
    );
  }
}
