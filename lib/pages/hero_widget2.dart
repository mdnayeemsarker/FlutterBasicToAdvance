import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/hero_widget.dart';

class HeroWidgetPage2 extends StatelessWidget {
  const HeroWidgetPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Widget page 2"),
      ),
      body: Center(
        child: Hero(
          tag: "add",
          child: Icon(
            Icons.add_a_photo,
            size: 100,
          ),
        ),
      ),
    );
  }
}
