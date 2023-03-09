import 'package:flutter/material.dart';

class SPFPage extends StatelessWidget {
  const SPFPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Position FAB"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(1)),
          ),
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Stack(
              // alignment: Alignment.bottomCenter,
              // alignment: Alignment.center,
              // alignment: Alignment.bottomCenter,
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
                Positioned(
                  bottom: -50,
                  child: CircleAvatar(
                    radius: 50,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
