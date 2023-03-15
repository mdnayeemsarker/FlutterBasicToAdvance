import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterPage extends StatelessWidget {
  const BackdropFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackdropFilterP();
  }
}

class BackdropFilterP extends StatefulWidget {
  const BackdropFilterP({super.key});

  @override
  State<BackdropFilterP> createState() => _BackdropFilterPState();
}

class _BackdropFilterPState extends State<BackdropFilterP> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Backdrop Filter"),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 500,
                width: 500,
                child: Image.asset("images/ip.png"),
                // color: Colors.amber,
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Container(
                  color: Colors.black.withOpacity(.1),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
