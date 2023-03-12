import 'package:flutter/material.dart';

class SwitchWidgetPage extends StatelessWidget {
  const SwitchWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SwitchwidgetPage();
  }
}

class SwitchwidgetPage extends StatefulWidget {
  const SwitchwidgetPage({super.key});

  @override
  State<SwitchwidgetPage> createState() => _SwitchwidgetPageState();
}

class _SwitchwidgetPageState extends State<SwitchwidgetPage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _value == false ? Colors.green : Colors.teal,
      appBar: AppBar(
        title: Text("Switch widget"),
      ),
      body: Center(
        child: Switch(
            value: _value,
            onChanged: (val) {
              setState(() {
                _value = val;
                print(_value);
              });
            }),
      ),
    );
  }
}
