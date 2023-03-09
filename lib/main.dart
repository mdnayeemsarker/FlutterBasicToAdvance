// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/app_bar.dart';
import 'package:flutter_basic_advance/pages/container.dart';
import 'package:flutter_basic_advance/pages/home_page.dart';
import 'package:flutter_basic_advance/pages/image.dart';
import 'package:flutter_basic_advance/pages/liquid_swipe.dart';
import 'package:flutter_basic_advance/pages/list_tile.dart';
import 'package:flutter_basic_advance/pages/media_query.dart';
import 'package:flutter_basic_advance/pages/row_column.dart';
import 'package:flutter_basic_advance/pages/safearea.dart';
import 'package:flutter_basic_advance/pages/spf.dart';
import 'package:flutter_basic_advance/pages/stateful.dart';
import 'package:flutter_basic_advance/pages/stateless.dart';
import 'package:flutter_basic_advance/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.green,
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
          MyRoutes.stateLessRoute: (context) => const StateLess(),
          MyRoutes.stateFulRoute: (context) => const StateFul(),
          MyRoutes.appBarRoute: (context) => const AppBarPage(),
          MyRoutes.safeAreaRoute: (context) => const SareAreaPage(),
          MyRoutes.containerRoute: (context) => const ContainerPage(),
          MyRoutes.rowColRoute: (context) => const RowColPage(),
          MyRoutes.mediaQueryRoute: (context) => const MediaQueryPage(),
          MyRoutes.listTileRoute: (context) => const ListTilePage(),
          MyRoutes.stackPositionFlotingRoute: (context) => const SPFPage(),
          MyRoutes.imageRoute: (context) => const ImagePage(),
          MyRoutes.liquidSeipeRoute: (context) => const LiquidSwipePage(),
        });
  }
}
