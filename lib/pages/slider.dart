import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Sliderpage();
  }
}

class Sliderpage extends StatefulWidget {
  const Sliderpage({super.key});

  @override
  State<Sliderpage> createState() => _SliderpageState();
}

class _SliderpageState extends State<Sliderpage> {
  var _value = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider with text"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "MD NAYEEM SARKER",
            style: TextStyle(fontSize: _value),
          ),
          SizedBox(
            height: 50,
          ),
          Slider(
              min: 10,
              max: 50,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                  print(value);
                });
              })
        ],
      ),
    );
  }
}
