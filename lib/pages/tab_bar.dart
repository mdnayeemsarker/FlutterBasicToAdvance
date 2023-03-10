import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/expanded.dart';
import 'package:flutter_basic_advance/pages/image.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.camera),
                ),
                Tab(
                  icon: Icon(Icons.message),
                )
              ]),
            ),
            body: TabBarView(children: [ImagePage(), ExpandedWidgetPage()]),
          )),
    );
  }
}
