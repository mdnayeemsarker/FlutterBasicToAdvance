import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/utils/routes.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext ctx) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter BTA"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.add)),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(children: [
            cardWidget(ctx, "Stateless Widget", MyRoutes.stateLessRoute),
            cardWidget(ctx, "Statefull Widget", MyRoutes.stateFulRoute),
            cardWidget(ctx, "Appbar & text widget", MyRoutes.appBarRoute),
            cardWidget(ctx, "Safe Area", MyRoutes.safeAreaRoute),
            cardWidget(ctx, "Container", MyRoutes.containerRoute),
            cardWidget(ctx, "Row & Column", MyRoutes.rowColRoute),
            cardWidget(ctx, "Media Query", MyRoutes.mediaQueryRoute),
            cardWidget(ctx, "List Tile", MyRoutes.listTileRoute),
            cardWidget(ctx, "Stack Position FlotingAction Button",
                MyRoutes.stackPFRoute),
            cardWidget(ctx, "Image assets / network", MyRoutes.imageRoute),
            cardWidget(ctx, "Liquid Swipe", MyRoutes.liquidSeipeRoute),
            cardWidget(ctx, "Card & GridView", MyRoutes.cardGridViewRoute),
            cardWidget(ctx, "Expanded Widget", MyRoutes.expandedRoute),
            cardWidget(ctx, "Page View", MyRoutes.pageViewRoute),
            cardWidget(ctx, "Hero Widget", MyRoutes.heroWidgetRoute),
            cardWidget(
                ctx, "Bottom Navigation Bar", MyRoutes.bottomnavbarRoute),
            cardWidget(ctx, "Tab Bar", MyRoutes.tabbarRoute),
            cardWidget(ctx, "Sliver App Bar", MyRoutes.sliverappbarRoute),
            cardWidget(ctx, "Appbar Gradient Color", MyRoutes.gradientappRoute),
            cardWidget(
                ctx, "Provider State management", MyRoutes.providerstateRoute),
            cardWidget(ctx, "Image Picker", MyRoutes.imagepickerRoute),
            cardWidget(ctx, "Modal Bottom Sheet", MyRoutes.modalbtmsheetRoute),
            cardWidget(ctx, "Alert Dialog", MyRoutes.alertdialogRoute),
            cardWidget(ctx, "Custom Alert Dialog", MyRoutes.customalrtdlgRoute),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () {
                  ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
                    content: const Text("Thanks for making snackbar"),
                    duration: const Duration(seconds: 5),
                    action: SnackBarAction(
                        label: "View more",
                        onPressed: () {
                          Navigator.pushNamed(ctx, MyRoutes.snackbarRoute);
                        }),
                  ));
                },
                title: const Text("Snack Bar"),
                trailing: const Icon(Icons.check),
              ),
            ),
            cardWidget(ctx, "Slider", MyRoutes.sliderRoute),
            cardWidget(ctx, "Rich Text", MyRoutes.richtextRoute),
            cardWidget(ctx, "Dropdown", MyRoutes.dropdownRoute),
            cardWidget(ctx, "Dismissable", MyRoutes.dissmissableRoute),
            cardWidget(ctx, "Checkbox", MyRoutes.checkboxRoute),
            cardWidget(ctx, "Animated Cross Feed", MyRoutes.animatedcfRoute),
            cardWidget(ctx, "Switch Widget", MyRoutes.switch_widgetRoute),
            cardWidget(ctx, "Curved Navigatopn Bar", MyRoutes.curvedNBRoute),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                title: const Text("Toast"),
                trailing: const Icon(Icons.check),
              ),
            ),
            cardWidget(ctx, "Animated Container", MyRoutes.animatedConRoute),
            cardWidget(ctx, "Expansion TIle", MyRoutes.expansionTileRoute),
          ]),
        ),
        drawer: MyDrawer(),
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
  MyDrawer({super.key});

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
