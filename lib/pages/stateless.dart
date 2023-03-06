import 'package:flutter/material.dart';

class StateLess extends StatelessWidget {
  const StateLess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(child: Text("This is an Stateless Widget")));
  }
}
