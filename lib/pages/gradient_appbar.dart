import 'package:flutter/material.dart';

class GradientCABPage extends StatefulWidget {
  const GradientCABPage({super.key});

  @override
  State<GradientCABPage> createState() => _GradientColorAppbarPageState();
}

class _GradientColorAppbarPageState extends State<GradientCABPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Appbar Gradient color"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              color: Colors.amber,
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 203, 114, 145),
                Color.fromARGB(255, 46, 20, 29),
                Color.fromARGB(255, 68, 32, 21)
              ])),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.amber,
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 204, 96, 132),
              Color.fromARGB(255, 129, 71, 53)
            ])),
      ),
    ));
  }
}
