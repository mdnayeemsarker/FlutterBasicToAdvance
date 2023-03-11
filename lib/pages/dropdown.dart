import 'package:flutter/material.dart';

class DropdownPage extends StatelessWidget {
  const DropdownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Dropdownpage();
  }
}

class Dropdownpage extends StatefulWidget {
  const Dropdownpage({super.key});

  @override
  State<Dropdownpage> createState() => _DropdownpageState();
}

class _DropdownpageState extends State<Dropdownpage> {
  var selected = "Choose";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(selected),
            DropdownButton(
              items: [
                DropdownMenuItem(value: "Text One", child: Text("Text One")),
                DropdownMenuItem(value: "Text Two", child: Text("Text Two")),
                DropdownMenuItem(
                    value: "Text Three", child: Text("Text Three")),
              ],
              onChanged: (value) {
                setState(() {
                  selected = value!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
