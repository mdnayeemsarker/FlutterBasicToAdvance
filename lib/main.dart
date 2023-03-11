// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/alert_dialog.dart';
import 'package:flutter_basic_advance/pages/custom_alert_dialog.dart';
import 'package:flutter_basic_advance/pages/modal_bottom_sheet.dart';
import 'package:flutter_basic_advance/pages/slider.dart';
import 'package:flutter_basic_advance/pages/snakbar.dart';
import 'package:provider/provider.dart';

import 'package:flutter_basic_advance/pages/app_bar.dart';
import 'package:flutter_basic_advance/pages/bottom_navigation.dart';
import 'package:flutter_basic_advance/pages/card_gridview.dart';
import 'package:flutter_basic_advance/pages/container.dart';
import 'package:flutter_basic_advance/pages/expanded.dart';
import 'package:flutter_basic_advance/pages/gradient_appbar.dart';
import 'package:flutter_basic_advance/pages/hero_widget.dart';
import 'package:flutter_basic_advance/pages/home_page.dart';
import 'package:flutter_basic_advance/pages/image.dart';
import 'package:flutter_basic_advance/pages/image_picker.dart';
import 'package:flutter_basic_advance/pages/liquid_swipe.dart';
import 'package:flutter_basic_advance/pages/list_tile.dart';
import 'package:flutter_basic_advance/pages/media_query.dart';
import 'package:flutter_basic_advance/pages/page_view.dart';
import 'package:flutter_basic_advance/pages/provider_state.dart';
import 'package:flutter_basic_advance/pages/row_column.dart';
import 'package:flutter_basic_advance/pages/safearea.dart';
import 'package:flutter_basic_advance/pages/sliver_appbar.dart';
import 'package:flutter_basic_advance/pages/spf.dart';
import 'package:flutter_basic_advance/pages/state_data.dart';
import 'package:flutter_basic_advance/pages/stateful.dart';
import 'package:flutter_basic_advance/pages/stateless.dart';
import 'package:flutter_basic_advance/pages/tab_bar.dart';
import 'package:flutter_basic_advance/utils/routes.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context) => StateData(), child: MyApp()));
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
          MyRoutes.cardGridViewRoute: (context) => const CardGridViewPage(),
          MyRoutes.expandedRoute: (context) => const ExpandedWidgetPage(),
          MyRoutes.pageViewRoute: (context) => const PageViewPage(),
          MyRoutes.heroWidgetRoute: (context) => const HeroWidgetPage(),
          MyRoutes.bottomnavbarRoute: (context) => const BottomNavigationPage(),
          MyRoutes.tabbarRoute: (context) => const TabBarPage(),
          MyRoutes.sliverappbarRoute: (context) => const SliverAppBarPage(),
          MyRoutes.gradientcolorappbarRoute: (context) =>
              const GradientColorAppbarPage(),
          MyRoutes.providerstateRoute: (context) => const ProviderStatePage(),
          MyRoutes.imagepickerRoute: (context) => const ImagePickerPage(),
          MyRoutes.modalbtmsheetRoute: (context) => const ModalBotomSheetPage(),
          MyRoutes.alertdialogRoute: (context) => const AlertDialogPage(),
          MyRoutes.customalrtdlgRoute: (context) => const CustomAlertDlgPage(),
          MyRoutes.snackbarRoute: (context) => const SnackBarPage(),
          MyRoutes.sliderRoute: (context) => const SliderPage(),
        });
  }
}
