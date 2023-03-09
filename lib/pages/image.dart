import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset("images/ip.png"), //Image from assets
          ),
          Center(
            child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ3HHIEm2rSoBDwYWiM3BG7Wcd4m-JmwGRwQ&usqp=CAU"), //Image from Network
          )
        ],
      ),
    );
  }
}
