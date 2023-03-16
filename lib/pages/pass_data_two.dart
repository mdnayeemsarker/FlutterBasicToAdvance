// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class PassDataTwoPage extends StatefulWidget {
  String getData;
  PassDataTwoPage({
    super.key,
    required this.getData,
  });

  @override
  State<PassDataTwoPage> createState() => _PassDataTwoPageState();
}

class _PassDataTwoPageState extends State<PassDataTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pass Data Page Two"),
      ),
      body: Center(
        child: Text(widget.getData),
      ),
    );
  }
}
