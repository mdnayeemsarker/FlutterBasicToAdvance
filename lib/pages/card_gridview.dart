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
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
              // borderRadius: BorderRadius.all(Radius.circular(20))),
              // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30))),
          child: Container(
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
