import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrePage extends StatelessWidget {
  const SharedPrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SharedPre();
  }
}

class SharedPre extends StatefulWidget {
  const SharedPre({super.key});

  @override
  State<SharedPre> createState() => _SharedPreState();
}

class _SharedPreState extends State<SharedPre> {
  int counter = 0;

  loadCounter() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      counter = pref.getInt("counter") ?? 0;
    });
  }

  increment() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    setState(() {
      counter++;
      pref.setInt("counter", counter);
    });
  }

  @override
  void initState() {
    loadCounter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Shared Prefrences"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text("You have clicked $counter times")],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            increment();
          },
          tooltip: "Increment",
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
