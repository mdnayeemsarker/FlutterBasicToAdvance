import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/pass_data_two.dart';

class PassDataOnePage extends StatelessWidget {
  const PassDataOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PassDataOne();
  }
}

class PassDataOne extends StatefulWidget {
  const PassDataOne({super.key});

  @override
  State<PassDataOne> createState() => _PassDataOneState();
}

class _PassDataOneState extends State<PassDataOne> {
  var name = "MD NAYEEM SARKER";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Pass Data Page One"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PassDataTwoPage(getData: name)));
              },
              child: Text("Click to send")),
        ),
      ),
    );
  }
}
