// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  var receivedData;
  DetailsPage({
    Key? key,
    required this.receivedData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            snap: true,
            actionsIconTheme: IconThemeData(opacity: 0.0),
            flexibleSpace: Stack(
              children: [
                // Title(color: Colors.black, child: Text("Md Nayeem Sarker")),
                Positioned.fill(
                    child: Image.network(
                  receivedData["thumbnail"],
                  fit: BoxFit.cover,
                ))
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      receivedData["title"],
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(receivedData["description"]),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text("\$${receivedData["price"]}",
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text("%${receivedData["discountPercentage"]}",
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    ));
  }
}
