import 'package:booksmandala/component/app_bar.dart';
import 'package:booksmandala/component/bottom_component.dart';
import 'package:booksmandala/component/music_control.dart';
import 'package:booksmandala/constants.dart';
import 'package:flutter/material.dart';
import 'package:booksmandala/component/slider_with_crop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  num? difference = 0;
  num? start = 0;
  num? end = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomAppBar(),
          const Text(
            'CHAPTER 1 \n Something Happen to Someone',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          ),
          WaveSlider(
              duration: 500,
              callbackStart: (myDouble) {
                setState(() {
                  start = myDouble;
                  difference = end! - start!;
                });
              },
              callbackEnd: (myDouble) {
                setState(() {
                  end = myDouble;
                  difference = end! - start!;
                });
              }),
          Text(
            "${difference! / 60} min in length",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),

          /// music control buttons
          Container(
            margin: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: MediaQuery.of(context).size.width * 0.15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                CustomButtons(
                  iconData: Icons.skip_previous_outlined,
                  iconSize: 30,
                  paddingSize: 19,
                ),
                CustomButtons(
                  iconData: Icons.pause,
                  iconSize: 40,
                  paddingSize: 30,
                ),
                CustomButtons(
                  iconData: Icons.check,
                  iconSize: 30,
                  paddingSize: 19,
                )
              ],
            ),
          ),
          const BottomComponent(),
        ],
      ),
    ));
  }
}
