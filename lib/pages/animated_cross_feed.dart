import 'package:flutter/material.dart';

class AnimatedCFPage extends StatelessWidget {
  const AnimatedCFPage({super.key});
// AnimatedCFPage = AnimatedCrossFeedPage
  @override
  Widget build(BuildContext context) {
    return Animatedcfpage();
  }
}

class Animatedcfpage extends StatefulWidget {
  const Animatedcfpage({super.key});

  @override
  State<Animatedcfpage> createState() => _AnimatedcfpageState();
}

class _AnimatedcfpageState extends State<Animatedcfpage> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated cross feed"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedCrossFade(
                firstChild: Container(
                  color: Colors.amberAccent,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          check = false;
                        });
                      },
                      child: Text("Signin")),
                ),
                secondChild: Text(
                  "Ok",
                  style: TextStyle(fontSize: 50),
                ),
                crossFadeState: check
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 1)),
          )
        ],
      ),
    );
  }
}
