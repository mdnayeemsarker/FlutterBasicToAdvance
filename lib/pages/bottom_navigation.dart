import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/expanded.dart';
import 'package:flutter_basic_advance/pages/image.dart';
import 'package:flutter_basic_advance/pages/liquid_swipe.dart';
import 'package:flutter_basic_advance/pages/list_tile.dart';

class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
      ),
      body: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currentindex = 0;

  final pages = [
    LiquidSwipePage(),
    ListTilePage(),
    ImagePage(),
    ExpandedWidgetPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.redAccent,
            icon: Icon(Icons.message),
            label: "Message",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.redAccent,
            icon: Icon(Icons.call),
            label: "Call",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.redAccent,
            icon: Icon(Icons.pan_tool),
            label: "Pan Tool",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.redAccent,
            icon: Icon(Icons.radio),
            label: "Radio",
          ),
        ],
        onTap: (index) {
          setState(() {});
          _currentindex = index;
        },
      ),
      body: pages[_currentindex],
    );
  }
}
