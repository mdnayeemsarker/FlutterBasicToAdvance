import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screen_height = MediaQuery.of(context).size.height;
    var button_hight = screen_height / 5;
    var width = MediaQuery.of(context).size.width / 4;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Media Query"),
      ),
      body: Center(
        child: Container(
          height: button_hight,
          width: width,
          color: Colors.blue,
        ),
      ),
    ));
  }
}
