import 'package:flutter/material.dart';

class DismissableWPage extends StatelessWidget {
  const DismissableWPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Dismissablepage();
  }
}

class Dismissablepage extends StatefulWidget {
  const Dismissablepage({super.key});

  @override
  State<Dismissablepage> createState() => _DismissablepageState();
}

class _DismissablepageState extends State<Dismissablepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissablepage"),
      ),
      body: Center(
        child: Dismissible(
          onDismissed: (direction) {
            print("dismiss complete");
          },
          key: ValueKey("abc"),
          background: Container(
            child: Icon(
              Icons.delete,
              size: 40,
            ),
            color: Colors.blue,
          ),
          secondaryBackground: Container(
            child: Icon(
              Icons.delete,
              size: 40,
            ),
            color: Colors.red,
          ),
          child: ListTile(
            title: Text("MD NAYEEM SARKER"),
            subtitle: Text("MD NAYEEM SARKER"),
            trailing: Icon(Icons.ac_unit),
          ),
        ),
      ),
    );
  }
}
