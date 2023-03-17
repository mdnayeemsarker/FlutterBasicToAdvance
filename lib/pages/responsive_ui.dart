import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ResponsiveUiPage extends StatelessWidget {
  const ResponsiveUiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveUi();
  }
}

class ResponsiveUi extends StatefulWidget {
  const ResponsiveUi({super.key});

  @override
  State<ResponsiveUi> createState() => _ResponsiveUiState();
}

class _ResponsiveUiState extends State<ResponsiveUi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Responsive Ui"),
        ),
        body: Center(
          child: AspectRatio(
            aspectRatio: 2,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
