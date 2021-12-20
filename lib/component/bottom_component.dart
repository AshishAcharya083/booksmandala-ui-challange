import 'package:flutter/material.dart';

import '../constants.dart';

class BottomComponent extends StatelessWidget {
  const BottomComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          const Image(
            image: AssetImage('images/img.png'),
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'BECOMING',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              Text(
                'Michelle Obama',
                style: TextStyle(color: kDisableColor, fontSize: 12),
              )
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.pause,
            color: kDisableColor,
          ),
        ],
      ),
    );
  }
}
