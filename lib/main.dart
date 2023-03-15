// ignore_for_file: prefer_const_declarations

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/animated_container.dart';
import 'package:flutter_basic_advance/pages/backdrop_filter.dart';
import 'package:flutter_basic_advance/pages/curved_navbar.dart';
import 'package:flutter_basic_advance/pages/expansion_tile.dart';
import 'package:provider/provider.dart';

import 'package:flutter_basic_advance/pages/alert_dialog.dart';
import 'package:flutter_basic_advance/pages/animated_cross_feed.dart';
import 'package:flutter_basic_advance/pages/app_bar.dart';
import 'package:flutter_basic_advance/pages/bottom_navigation.dart';
import 'package:flutter_basic_advance/pages/card_gridview.dart';
import 'package:flutter_basic_advance/pages/check_box.dart';
import 'package:flutter_basic_advance/pages/container.dart';
import 'package:flutter_basic_advance/pages/custom_alert_dialog.dart';
import 'package:flutter_basic_advance/pages/dismissable.dart';
import 'package:flutter_basic_advance/pages/dropdown.dart';
import 'package:flutter_basic_advance/pages/expanded.dart';
import 'package:flutter_basic_advance/pages/gradient_appbar.dart';
import 'package:flutter_basic_advance/pages/hero_widget.dart';
import 'package:flutter_basic_advance/pages/home_page.dart';
import 'package:flutter_basic_advance/pages/image.dart';
import 'package:flutter_basic_advance/pages/image_picker.dart';
import 'package:flutter_basic_advance/pages/liquid_swipe.dart';
import 'package:flutter_basic_advance/pages/list_tile.dart';
import 'package:flutter_basic_advance/pages/media_query.dart';
import 'package:flutter_basic_advance/pages/modal_bottom_sheet.dart';
import 'package:flutter_basic_advance/pages/page_view.dart';
import 'package:flutter_basic_advance/pages/provider_state.dart';
import 'package:flutter_basic_advance/pages/rich_text.dart';
import 'package:flutter_basic_advance/pages/row_column.dart';
import 'package:flutter_basic_advance/pages/safearea.dart';
import 'package:flutter_basic_advance/pages/slider.dart';
import 'package:flutter_basic_advance/pages/sliver_appbar.dart';
import 'package:flutter_basic_advance/pages/snakbar.dart';
import 'package:flutter_basic_advance/pages/spf.dart';
import 'package:flutter_basic_advance/pages/state_data.dart';
import 'package:flutter_basic_advance/pages/stateful.dart';
import 'package:flutter_basic_advance/pages/stateless.dart';
import 'package:flutter_basic_advance/pages/switch_widget.dart';
import 'package:flutter_basic_advance/pages/tab_bar.dart';
import 'package:flutter_basic_advance/utils/routes.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context) => StateData(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

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
          MyRoutes.stackPFRoute: (context) => const SPFPage(),
          MyRoutes.imageRoute: (context) => const ImagePage(),
          MyRoutes.liquidSeipeRoute: (context) => const LiquidSwipePage(),
          MyRoutes.cardGridViewRoute: (context) => const CardGridViewPage(),
          MyRoutes.expandedRoute: (context) => const ExpandedWidgetPage(),
          MyRoutes.pageViewRoute: (context) => const PageViewPage(),
          MyRoutes.heroWidgetRoute: (context) => const HeroWidgetPage(),
          MyRoutes.bottomnavbarRoute: (context) => const BottomNavigationPage(),
          MyRoutes.tabbarRoute: (context) => const TabBarPage(),
          MyRoutes.sliverappbarRoute: (context) => const SliverAppBarPage(),
          MyRoutes.gradientappRoute: (context) => const GradientCABPage(),
          MyRoutes.providerstateRoute: (context) => const ProviderStatePage(),
          MyRoutes.imagepickerRoute: (context) => ImagePickerPage(),
          MyRoutes.modalbtmsheetRoute: (context) => const ModalBotomSheetPage(),
          MyRoutes.alertdialogRoute: (context) => const AlertDialogPage(),
          MyRoutes.customalrtdlgRoute: (context) => const CustomAlertDlgPage(),
          MyRoutes.snackbarRoute: (context) => const SnackBarPage(),
          MyRoutes.sliderRoute: (context) => const SliderPage(),
          MyRoutes.richtextRoute: (context) => const RichTextPage(),
          MyRoutes.dropdownRoute: (context) => const DropdownPage(),
          MyRoutes.dissmissableRoute: (context) => const DismissableWPage(),
          MyRoutes.checkboxRoute: (context) => const CheckBoxPage(),
          MyRoutes.animatedcfRoute: (context) => const AnimatedCFPage(),
          MyRoutes.switch_widgetRoute: (context) => const SwitchWidgetPage(),
          MyRoutes.curvedNBRoute: (context) => const CurvedNavbarPage(),
          MyRoutes.animatedConRoute: (context) => const AnimatedConPage(),
          MyRoutes.expansionTileRoute: (context) => const ExpansionTilePage(),
          MyRoutes.backdropFilterRoute: (context) => const BackdropFilterPage(),
        });
  }
}
