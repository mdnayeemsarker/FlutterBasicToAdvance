// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/home_page.dart';
import 'package:flutter_basic_advance/pages/slsfw/stateful.dart';
import 'package:flutter_basic_advance/pages/slsfw/stateless.dart';
import 'package:flutter_basic_advance/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.red,
          // fontFamily: GoogleFonts.lato().fontFamily,
        ),
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(brightness: Brightness.dark
            // primarySwatch: Colors.blueGrey
            ),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => HomePage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.stateLessRoute: (context) => StateLess(),
          MyRoutes.stateFulRoute: (context) => StateFul(),
        });
  }
}
