import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_basic_advance/pages/home_page.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashScreenpage();
  }
}

class SplashScreenpage extends StatefulWidget {
  const SplashScreenpage({super.key});

  @override
  State<SplashScreenpage> createState() => _SplashScreenpageState();
}

class _SplashScreenpageState extends State<SplashScreenpage> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => HomePage(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Image.asset(
          "images/ip.png",
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 1.5,
        ),
      ),
    );
  }
}
