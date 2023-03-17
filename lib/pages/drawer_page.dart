import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawerpage();
  }
}

class Drawerpage extends StatefulWidget {
  const Drawerpage({super.key});

  @override
  State<Drawerpage> createState() => _DrawerpageState();
}

class _DrawerpageState extends State<Drawerpage> {
  // final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(children: [
            ListTile(
              onTap: () {},
              title: const Text("first"),
            ),
            ListTile(
              onTap: () {},
              title: const Text("first"),
            ),
            ListTile(
              onTap: () {},
              title: const Text("first"),
            ),
          ]),
        ),
        appBar: AppBar(
          title: const Text("Appbar Drawer"),
          centerTitle: true,
          // leading: IconButton(
          //     onPressed: () {
          //       _globalKey.currentState!.openDrawer();
          //     },
          //     icon: const Icon(Icons.arrow_back_ios)),
        ),
      ),
    );
  }
}
