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
        body: Column(children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width / 2,
            color: Colors.purple,
            child: FractionallySizedBox(
              heightFactor: .5,
              widthFactor: .5,
              child: Container(
                color: Colors.amber,
                child: FractionallySizedBox(
                  heightFactor: .5,
                  widthFactor: .5,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
