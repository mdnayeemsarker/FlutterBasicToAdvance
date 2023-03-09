import 'package:flutter/material.dart';

class RowColPage extends StatelessWidget {
  const RowColPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Row and Column")),
        body: Column(
          children: [
            Container(
              height: 200,
              width: 100,
              color: Colors.amberAccent,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.amberAccent,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.amberAccent,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.amberAccent,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.amberAccent,
            ),
          ],
        ),
      ),
    );
  }
}
