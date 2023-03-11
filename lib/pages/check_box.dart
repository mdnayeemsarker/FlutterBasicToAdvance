import 'package:flutter/material.dart';

class CheckBoxPage extends StatelessWidget {
  const CheckBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Checkboxpage();
  }
}

class Checkboxpage extends StatefulWidget {
  const Checkboxpage({super.key});

  @override
  State<Checkboxpage> createState() => _CheckboxpageState();
}

class _CheckboxpageState extends State<Checkboxpage> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_value == false ? "Unchecked" : "Checked"),
            Checkbox(
                value: _value,
                onChanged: (val) {
                  setState(() {
                    _value = val!;
                    print(_value);
                  });
                })
          ],
        ),
      ),
    );
  }
}
