import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Snackbarpage();
  }
}

class Snackbarpage extends StatefulWidget {
  const Snackbarpage({super.key});

  @override
  State<Snackbarpage> createState() => _SnackbarpageState();
}

class _SnackbarpageState extends State<Snackbarpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
      ),
      body: Center(
        child: Builder(
          builder: (BuildContext con) {
            return ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(con).showSnackBar(SnackBar(
                    content: Text("Thanks for making snackbar"),
                    duration: Duration(seconds: 5),
                    action: SnackBarAction(label: "ok", onPressed: () {}),
                  ));
                },
                child: Text("Click"));
          },
        ),
      ),
    );
  }
}
