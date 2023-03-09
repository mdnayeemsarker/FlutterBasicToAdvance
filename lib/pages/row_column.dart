import 'package:flutter/material.dart';

class RowColPage extends StatelessWidget {
  const RowColPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Row and Column")),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  width: 300,
                  color: Colors.amberAccent,
                ),
                const SizedBox(
                  height: 5,
                  width: 5,
                ),
                Container(
                  height: 200,
                  width: 300,
                  color: Colors.amberAccent,
                ),
                const SizedBox(
                  height: 5,
                  width: 5,
                ),
                Container(
                  height: 200,
                  width: 300,
                  color: Colors.amberAccent,
                ),
                const SizedBox(
                  height: 5,
                  width: 5,
                ),
                Container(
                  height: 200,
                  width: 300,
                  color: Colors.amberAccent,
                ),
                const SizedBox(
                  height: 5,
                  width: 5,
                ),
                Container(
                  height: 200,
                  width: 300,
                  color: Colors.amberAccent,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
