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
          title: Text("Flutter BTA"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(children: [
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.stateLessRoute);
                },
                leading: Icon(Icons.macro_off),
                title: Text("Stateless Widget"),
                trailing: Icon(Icons.check),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.stateFulRoute);
                },
                leading: Icon(Icons.macro_off),
                title: Text("Statefull Widget"),
                trailing: Icon(Icons.check),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.appBarRoute);
                },
                leading: Icon(Icons.macro_off),
                title: Text("Appbar & text widget"),
                trailing: Icon(Icons.check),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.safeAreaRoute);
                },
                leading: Icon(Icons.macro_off),
                title: Text("Safe Area"),
                trailing: Icon(Icons.check),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.containerRoute);
                },
                leading: Icon(Icons.macro_off),
                title: Text("Container"),
                trailing: Icon(Icons.check),
              ),
            ),
          ]),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ3HHIEm2rSoBDwYWiM3BG7Wcd4m-JmwGRwQ&usqp=CAU";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
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
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.black,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              CupertinoIcons.chat_bubble,
              color: Colors.black,
            ),
            title: Text(
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
