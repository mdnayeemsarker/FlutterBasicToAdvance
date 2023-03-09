import 'package:flutter/material.dart';

class SareAreaPage extends StatelessWidget {
  const SareAreaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Safeare"),
        ),
        body: Center(
            child: Text(
                "Safeare that means this are seferated appbar and the bottom navigation area, that is called safe area")),
      ),
    );
  }
}
