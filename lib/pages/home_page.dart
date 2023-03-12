import 'dart:math';

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
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(children: [
            cardWidget(context, "Stateless Widget", MyRoutes.stateLessRoute),
            cardWidget(context, "Statefull Widget", MyRoutes.stateFulRoute),
            cardWidget(context, "Appbar & text widget", MyRoutes.appBarRoute),
            cardWidget(context, "Safe Area", MyRoutes.safeAreaRoute),
            cardWidget(context, "Container", MyRoutes.containerRoute),
            cardWidget(context, "Row & Column", MyRoutes.rowColRoute),
            cardWidget(context, "Media Query", MyRoutes.mediaQueryRoute),
            cardWidget(context, "List Tile", MyRoutes.listTileRoute),
            cardWidget(context, "Stack Position FlotingAction Button",
                MyRoutes.stackPFRoute),
            cardWidget(context, "Image assets / network", MyRoutes.imageRoute),
            cardWidget(context, "Liquid Swipe", MyRoutes.liquidSeipeRoute),
            cardWidget(context, "Card & GridView", MyRoutes.cardGridViewRoute),
            cardWidget(context, "Expanded Widget", MyRoutes.expandedRoute),
            cardWidget(context, "Page View", MyRoutes.pageViewRoute),
            cardWidget(context, "Hero Widget", MyRoutes.heroWidgetRoute),
            cardWidget(
                context, "Bottom Navigation Bar", MyRoutes.bottomnavbarRoute),
            cardWidget(context, "Tab Bar", MyRoutes.tabbarRoute),
            cardWidget(context, "Sliver App Bar", MyRoutes.sliverappbarRoute),
            cardWidget(
                context, "Appbar Gradient Color", MyRoutes.gradientappRoute),
            cardWidget(context, "Provider State management",
                MyRoutes.providerstateRoute),
            cardWidget(context, "Image Picker", MyRoutes.imagepickerRoute),
            cardWidget(
                context, "Modal Bottom Sheet", MyRoutes.modalbtmsheetRoute),
            cardWidget(context, "Alert Dialog", MyRoutes.alertdialogRoute),
            cardWidget(
                context, "Custom Alert Dialog", MyRoutes.customalrtdlgRoute),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Thanks for making snackbar"),
                    duration: Duration(seconds: 5),
                    action: SnackBarAction(
                        label: "View more",
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.snackbarRoute);
                        }),
                  ));
                },
                title: const Text("Snack Bar"),
                trailing: const Icon(Icons.check),
              ),
            ),
            cardWidget(context, "Slider", MyRoutes.sliderRoute),
            cardWidget(context, "Rich Text", MyRoutes.richtextRoute),
            cardWidget(context, "Dropdown", MyRoutes.dropdownRoute),
            cardWidget(context, "Dismissable", MyRoutes.dissmissableRoute),
            cardWidget(context, "Checkbox", MyRoutes.checkboxRoute),
            cardWidget(
                context, "Animated Cross Feed", MyRoutes.animatedcfRoute),
            cardWidget(context, "Switch Widget", MyRoutes.switch_widgetRoute),
          ]),
        ),
        drawer: const MyDrawer(),
      ),
    );
  }

  Widget cardWidget(BuildContext context, String title, String route) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        title: Text(title),
        trailing: const Icon(Icons.check),
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
                  backgroundColor: Colors.amber,
                  // backgroundImage: NetworkImage(imageUrl),
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
