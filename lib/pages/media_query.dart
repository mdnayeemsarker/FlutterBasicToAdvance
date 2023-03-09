import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screen_height = MediaQuery.of(context).size.height / 5;
    var button_hight = screen_height / 6;
    var width = MediaQuery.of(context).size.width / 4;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Center(
          child: Container(
            height: button_hight,
            width: width,
            color: Colors.blue,
          ),
        ),
      )),
    );
  }
}
