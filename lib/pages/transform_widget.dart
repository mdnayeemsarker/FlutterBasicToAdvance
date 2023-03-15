import 'dart:math';

import 'package:flutter/material.dart';

class TransformWidgetPage extends StatelessWidget {
  const TransformWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TransformWidgetP();
  }
}

class TransformWidgetP extends StatefulWidget {
  const TransformWidgetP({super.key});

  @override
  State<TransformWidgetP> createState() => _TransformWidgetPState();
}

class _TransformWidgetPState extends State<TransformWidgetP> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("TransformWidgetP")),
        body: Center(
          // child: Transform.rotate(
          //   angle: pi / 2,
          // child: Transform.scale(
          //   scale: 2.5,
          child: Transform.translate(
            offset: const Offset(50, 50),
            child: Container(
              height: 150,
              width: 150,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
