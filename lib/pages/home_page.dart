import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/utils/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter BTA"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(children: [
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.stateLessRoute);
                },
                leading: const Icon(Icons.macro_off),
                title: const Text("Stateless Widget"),
                trailing: const Icon(Icons.check),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.stateFulRoute);
                },
                leading: const Icon(Icons.macro_off),
                title: const Text("Statefull Widget"),
                trailing: const Icon(Icons.check),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.appBarRoute);
                },
                leading: const Icon(Icons.macro_off),
                title: const Text("Appbar & text widget"),
                trailing: const Icon(Icons.check),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.safeAreaRoute);
                },
                leading: const Icon(Icons.macro_off),
                title: const Text("Safe Area"),
                trailing: const Icon(Icons.check),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.containerRoute);
                },
                leading: const Icon(Icons.macro_off),
                title: const Text("Container"),
                trailing: const Icon(Icons.check),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.rowColRoute);
                },
                leading: const Icon(Icons.macro_off),
                title: const Text("Row & Column"),
                trailing: const Icon(Icons.check),
              ),
            ),
          ]),
        ),
        drawer: const MyDrawer(),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ3HHIEm2rSoBDwYWiM3BG7Wcd4m-JmwGRwQ&usqp=CAU";
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("MD. NAYEEM SARKER"),
                accountEmail: Text("dev.ab.nayeem@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              )),
          ListTile(
            onTap: () {},
            leading: const Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: const Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              CupertinoIcons.profile_circled,
              color: Colors.black,
            ),
            title: const Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              CupertinoIcons.chat_bubble,
              color: Colors.black,
            ),
            title: const Text(
              "Support",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
