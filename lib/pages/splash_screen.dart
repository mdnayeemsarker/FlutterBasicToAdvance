import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_basic_advance/pages/home_page.dart';
import 'package:flutter_basic_advance/pages/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  bool? isViewed;

  checkIsViewed() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    isViewed = pref.getBool("isIntroductionViewed") ?? false;
  }

  @override
  void initState() {
    checkIsViewed();
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) =>
                isViewed == true ? const HomePage() : const OnBoardingPage(),
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
