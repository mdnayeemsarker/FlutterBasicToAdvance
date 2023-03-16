import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/http_reqest.dart';
import 'package:flutter_basic_advance/pages/transform_widget.dart';

class NavRailPage extends StatelessWidget {
  const NavRailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NavRail();
  }
}

class NavRail extends StatefulWidget {
  const NavRail({super.key});

  @override
  State<NavRail> createState() => _NavRailState();
}

class _NavRailState extends State<NavRail> {
  int _selectedIndex = 0;
  final _pages = [
    const TransformWidgetPage(),
    const HttpRequestPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Navigation Rail"),
        ),
        body: Row(
          children: [
            NavigationRail(
              backgroundColor: Colors.black12,
              labelType: NavigationRailLabelType.all,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(
                    Icons.wifi,
                    color: Colors.white,
                  ),
                  label: Text("Wifi"),
                  selectedIcon: Icon(
                    Icons.wifi,
                    color: Colors.green,
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.sunny,
                    color: Colors.white,
                  ),
                  label: Text("Sunny"),
                  selectedIcon: Icon(
                    Icons.sunny,
                    color: Colors.green,
                  ),
                ),
              ],
              selectedIndex: _selectedIndex,
              onDestinationSelected: (val) {
                setState(() {
                  _selectedIndex = val;
                });
              },
            ),
            Expanded(
              child: Container(
                child: _pages[_selectedIndex],
              ),
            )
          ],
        ),
      ),
    );
  }
}
