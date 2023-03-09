import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Container(
        width: 300,
        height: 500,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.deepOrange),
        child: const Text(
          "This is an container",
          style: TextStyle(color: Colors.amber),
        ),
      ),
    );
  }
}
