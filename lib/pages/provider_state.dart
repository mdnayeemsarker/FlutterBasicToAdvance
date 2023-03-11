import 'package:flutter/material.dart';

class ProviderStatePage extends StatelessWidget {
  const ProviderStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Providerhome();
  }
}

class Providerhome extends StatefulWidget {
  const Providerhome({super.key});

  @override
  State<Providerhome> createState() => _ProviderhomeState();
}

class _ProviderhomeState extends State<Providerhome> {
  int value = 0;
  Increment() {
    value++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Provider State management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value.toString(),
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
                onPressed: () {
                  Increment();
                },
                child: Text("Click"))
          ],
        ),
      ),
    ));
  }
}
