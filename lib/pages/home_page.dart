import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/utils/routes.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
            cardWidget(context, "Figma to flutter", MyRoutes.figmatoflutterRoute),
            cardWidget(context, "Check Connectivity", MyRoutes.connectivityRoute),
            cardWidget(context, "Navigation Routes", MyRoutes.navigationsRoute),
            cardWidget(context, "Responsive Ui", MyRoutes.responsiveUiRoute),
            cardWidget(context, "Web View", MyRoutes.webviewRoute),
            cardWidget(context, "Url Launcher", MyRoutes.urlLauncherRoute),
            cardWidget(context, "Custom Drawer", MyRoutes.customDrawerRoute),
            cardWidget(context, "Text From field validate", MyRoutes.textFormRoute),
            cardWidget(context, "Shared Prefrences", MyRoutes.sharedPreRoute),
            cardWidget(context, "Carousel Slider", MyRoutes.carSliderRoute),
            cardWidget(context, "Pass Data One page to Another Page",
                MyRoutes.passDataRoute),
            cardWidget(context, "Navigation Rail", MyRoutes.navRailRoute),
            cardWidget(context, "Data Table", MyRoutes.dataTableRoute),
            cardWidget(context, "Fetching Json Data with Http request",
                MyRoutes.httpRequestRoute),
            cardWidget(
                context, "Transform Widget", MyRoutes.transformWidgetRoute),
            cardWidget(
                context, "Date & Time Picker", MyRoutes.dateTimePickerRoute),
            cardWidget(
                context, "Backdrop Filter", MyRoutes.backdropFilterRoute),
            cardWidget(context, "Expansion TIle", MyRoutes.expansionTileRoute),
            cardWidget(
                context, "Animated Container", MyRoutes.animatedConRoute),
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
            cardWidget(
                context, "Curved Navigatopn Bar", MyRoutes.curvedNBRoute),
            cardWidget(context, "Switch Widget", MyRoutes.switch_widgetRoute),
            cardWidget(
                context, "Animated Cross Feed", MyRoutes.animatedcfRoute),
            cardWidget(context, "Checkbox", MyRoutes.checkboxRoute),
            cardWidget(context, "Dismissable", MyRoutes.dissmissableRoute),
            cardWidget(context, "Dropdown", MyRoutes.dropdownRoute),
            cardWidget(context, "Rich Text", MyRoutes.richtextRoute),
            cardWidget(context, "Slider", MyRoutes.sliderRoute),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text("Thanks for making snackbar"),
                    duration: const Duration(seconds: 5),
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
            cardWidget(
                context, "Custom Alert Dialog", MyRoutes.customalrtdlgRoute),
            cardWidget(context, "Alert Dialog", MyRoutes.alertdialogRoute),
            cardWidget(
                context, "Modal Bottom Sheet", MyRoutes.modalbtmsheetRoute),
            cardWidget(context, "Image Picker", MyRoutes.imagepickerRoute),
            cardWidget(context, "Provider State management",
                MyRoutes.providerstateRoute),
            cardWidget(
                context, "Appbar Gradient Color", MyRoutes.gradientappRoute),
            cardWidget(context, "Sliver App Bar", MyRoutes.sliverappbarRoute),
            cardWidget(context, "Tab Bar", MyRoutes.tabbarRoute),
            cardWidget(
                context, "Bottom Navigation Bar", MyRoutes.bottomnavbarRoute),
            cardWidget(context, "Hero Widget", MyRoutes.heroWidgetRoute),
            cardWidget(context, "Page View", MyRoutes.pageViewRoute),
            cardWidget(context, "Expanded Widget", MyRoutes.expandedRoute),
            cardWidget(context, "Card & GridView", MyRoutes.cardGridViewRoute),
            cardWidget(context, "Liquid Swipe", MyRoutes.liquidSeipeRoute),
            cardWidget(context, "Stack Position FlotingAction Button",
                MyRoutes.stackPFRoute),
            cardWidget(context, "Image assets / network", MyRoutes.imageRoute),
            cardWidget(context, "List Tile", MyRoutes.listTileRoute),
            cardWidget(context, "Media Query", MyRoutes.mediaQueryRoute),
            cardWidget(context, "Row & Column", MyRoutes.rowColRoute),
            cardWidget(context, "Container", MyRoutes.containerRoute),
            cardWidget(context, "Safe Area", MyRoutes.safeAreaRoute),
            cardWidget(context, "Appbar & text widget", MyRoutes.appBarRoute),
            cardWidget(context, "Statefull Widget", MyRoutes.stateFulRoute),
            cardWidget(context, "Stateless Widget", MyRoutes.stateLessRoute),
          ]),
        ),
        drawer: MyDrawer(),
      ),
    );
  }

  Widget cardWidget(BuildContext context, String title, String route) {
    return Tooltip(
      message: title,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListTile(
          onTap: () {
            Navigator.pushNamed(context, route);
          },
          title: Text(title),
          trailing: const Icon(Icons.check),
        ),
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
