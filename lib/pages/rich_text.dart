import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RichTextPage extends StatelessWidget {
  const RichTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Richtextpage();
  }
}

class Richtextpage extends StatefulWidget {
  const Richtextpage({super.key});

  @override
  State<Richtextpage> createState() => _RichtextpageState();
}

class _RichtextpageState extends State<Richtextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich Text"),
      ),
      body: Center(
        child: RichText(
            text: TextSpan(
          text: "Asha",
          style: TextStyle(fontSize: 20, color: Colors.black),
          children: [
            TextSpan(
              text: " Nayeem",
              style: TextStyle(fontSize: 25, color: Colors.green),
            )
          ],
        )),
      ),
    );
  }
}
