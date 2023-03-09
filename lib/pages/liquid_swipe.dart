import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipePage extends StatelessWidget {
  const LiquidSwipePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.yellow,
      ),
      Container(
        color: Colors.blue,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Liquid Swipe"),
      ),
      body: LiquidSwipe(pages: pages),
    );
  }
}
