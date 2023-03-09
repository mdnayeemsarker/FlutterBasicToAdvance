import 'package:flutter/material.dart';

class StateLess extends StatelessWidget {
  const StateLess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateless Widget"),
        ),
        body: Center(child: Text("This is an Stateless Widget")));
  }
}
