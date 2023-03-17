import 'package:flutter/material.dart';

class NavigationRoutePage extends StatelessWidget {
  const NavigationRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Navigation Routes",
      theme: ThemeData(primaryColor: Colors.blue),
      initialRoute: "/",
      routes: {
        "/first": (context) => const FirstScreen(),
        "/second": (context) => const SecondScreen(),
      },
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/second");
              },
              child: const Text("First Screen")),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/first");
              },
              child: const Text("Second Screen")),
        ),
      ),
    );
  }
}
