import 'package:flutter/material.dart';

class CardGridViewPage extends StatelessWidget {
  const CardGridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card & GridView"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              Container(
                height: 200,
                width: 150,
                color: Colors.amber,
              ),
              Container(
                height: 200,
                width: 150,
                color: Colors.blueGrey,
              ),
              Container(
                height: 200,
                width: 150,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 150,
                color: Colors.pink,
              )
            ],
          ),
        ),
      ),
    );
  }
}
