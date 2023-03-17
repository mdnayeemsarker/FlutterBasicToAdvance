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
        body: LayoutBuilder(
          builder: (_, constraints) {
            if (constraints.maxWidth < 480) {
              return Container(
                child: const Center(
                  child: Text("less than 480"),
                ),
              );
            } else if (constraints.maxWidth > 480 &&
                constraints.maxWidth < 800) {
              return Container(
                child: const Center(
                  child: Text("gretter than 480 less than 800"),
                ),
              );
            } else {
              return Container(
                child: const Center(
                  child: Text("gretter than 800"),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
