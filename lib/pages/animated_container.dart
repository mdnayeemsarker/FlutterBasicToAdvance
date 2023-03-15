import 'package:flutter/material.dart';

class AnimatedConPage extends StatelessWidget {
  const AnimatedConPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnimatedCon();
  }
}

class AnimatedCon extends StatefulWidget {
  const AnimatedCon({super.key});

  @override
  State<AnimatedCon> createState() => _AnimatedConState();
}

class _AnimatedConState extends State<AnimatedCon> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _value = !_value;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: AnimatedContainer(
          height: _value == false ? 150 : 400,
          width: _value == false ? 100 : 300,
          color: Colors.purple,
          duration: Duration(seconds: 4),
        ),
      ),
    );
  }
}
