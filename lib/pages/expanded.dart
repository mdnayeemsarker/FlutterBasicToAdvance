import 'package:flutter/material.dart';

class ExpandedWidgetPage extends StatelessWidget {
  const ExpandedWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widget"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
