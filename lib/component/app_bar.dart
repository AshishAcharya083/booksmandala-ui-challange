import 'package:booksmandala/constants.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'BECOMING',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Michelle Obama',
                style: TextStyle(color: kDisableColor, fontSize: 12),
              )
            ],
          ),
          Row(
            children: [
              const Icon(Icons.bookmark_border),
              const SizedBox(
                width: 14,
              ),
              Transform.rotate(
                alignment: Alignment.center,
                angle: 270 * math.pi / 180,
                child: const Icon(
                  Icons.arrow_back_ios,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
