import 'package:flutter/material.dart';

class StateFul extends StatefulWidget {
  const StateFul({super.key});

  @override
  State<StateFul> createState() => _StateFulState();
}

class _StateFulState extends State<StateFul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
        ),
        body: Center(child: Text("This is an Stateful Widget")));
  }
}
