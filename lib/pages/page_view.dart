import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/app_bar.dart';
import 'package:flutter_basic_advance/pages/list_tile.dart';
import 'package:flutter_basic_advance/pages/media_query.dart';
import 'package:flutter_basic_advance/pages/row_column.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key});

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          AppBarPage(),
          RowColPage(),
          MediaQueryPage(),
          ListTilePage(),
        ],
      ),
    );
  }
}
