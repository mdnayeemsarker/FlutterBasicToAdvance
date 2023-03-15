import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/app_bar.dart';
import 'package:flutter_basic_advance/pages/dismissable.dart';
import 'package:flutter_basic_advance/pages/image_picker.dart';
import 'package:flutter_basic_advance/pages/sliver_appbar.dart';
import 'package:flutter_basic_advance/pages/switch_widget.dart';

class CurvedNavbarPage extends StatelessWidget {
  const CurvedNavbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Curved Navigation Bar"),
      ),
      body: const NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var _page = 0;
  final pages = [
    const AppBarPage(),
    ImagePickerPage(),
    const SliverAppBarPage(),
    const DismissableWPage(),
    const SwitchWidgetPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          index: _page,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          items: const [
            Icon(Icons.alarm),
            Icon(Icons.call),
            Icon(Icons.calculate),
            Icon(Icons.calendar_month),
            Icon(Icons.message),
          ]),
      body: pages[_page],
    );
  }
}
