import 'package:flutter/material.dart';

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
        body: OrientationBuilder(
          builder: (_, orientation) {
            if (orientation == Orientation.portrait) {
              return Container(
                child: const Center(
                  child: Text("Portrait"),
                ),
                color: Colors.green,
              );
            } else {
              return Container(
                child: const Center(
                  child: Text("Landscript"),
                ),
                color: Colors.purple,
              );
            }
          },
        ),
      ),
    );
  }
}
