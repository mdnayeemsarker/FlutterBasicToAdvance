// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';
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
          MyRoutes.stateLessRoute: (context) => StateLess(),
          MyRoutes.stateFulRoute: (context) => StateFul(),
          MyRoutes.appBarRoute: (context) => AppBarPage(),
          MyRoutes.safeAreaRoute: (context) => SareAreaPage(),
          MyRoutes.containerRoute: (context) => ContainerPage(),
          MyRoutes.rowColRoute: (context) => RowColPage(),
          MyRoutes.mediaQueryRoute: (context) => MediaQueryPage(),
          MyRoutes.listTileRoute: (context) => ListTilePage(),
          MyRoutes.stackPFRoute: (context) => SPFPage(),
          MyRoutes.imageRoute: (context) => ImagePage(),
          MyRoutes.liquidSeipeRoute: (context) => LiquidSwipePage(),
          MyRoutes.cardGridViewRoute: (context) => CardGridViewPage(),
          MyRoutes.expandedRoute: (context) => ExpandedWidgetPage(),
          MyRoutes.pageViewRoute: (context) => PageViewPage(),
          MyRoutes.heroWidgetRoute: (context) => HeroWidgetPage(),
          MyRoutes.bottomnavbarRoute: (context) => BottomNavigationPage(),
          MyRoutes.tabbarRoute: (context) => TabBarPage(),
          MyRoutes.sliverappbarRoute: (context) => SliverAppBarPage(),
          MyRoutes.gradientappRoute: (context) => GradientCABPage(),
          MyRoutes.providerstateRoute: (context) => ProviderStatePage(),
          MyRoutes.imagepickerRoute: (context) => ImagePickerPage(),
          MyRoutes.modalbtmsheetRoute: (context) => ModalBotomSheetPage(),
          MyRoutes.alertdialogRoute: (context) => AlertDialogPage(),
          MyRoutes.customalrtdlgRoute: (context) => CustomAlertDlgPage(),
          MyRoutes.snackbarRoute: (context) => SnackBarPage(),
          MyRoutes.sliderRoute: (context) => SliderPage(),
          MyRoutes.richtextRoute: (context) => RichTextPage(),
          MyRoutes.dropdownRoute: (context) => DropdownPage(),
          MyRoutes.dissmissableRoute: (context) => DismissableWPage(),
          MyRoutes.checkboxRoute: (context) => CheckBoxPage(),
          MyRoutes.animatedcfRoute: (context) => AnimatedCFPage(),
          MyRoutes.switch_widgetRoute: (context) => SwitchWidgetPage(),
        });
  }
}
