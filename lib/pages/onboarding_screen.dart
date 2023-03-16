import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/home_page.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnBoarding();
  }
}

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  checkIsViewed() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      pref.setBool("isIntroductionViewed", true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Introduction Page"),
        ),
        body: IntroductionScreen(
          pages: [
            PageViewModel(
                title: "First Page",
                body: "This is our first page description",
                image: Image.network(
                    "https://www.mobiledokan.com/wp-content/uploads/2022/09/Apple-iPhone-14-Pro-Max.jpg")),
            PageViewModel(
                title: "Second Page",
                body: "This is our second page description",
                image: Image.network(
                    "https://cdn1.smartprix.com/rx-in8k1xfjU-w1200-h1200/n8k1xfjU.jpg")),
            PageViewModel(
                title: "Third Page",
                body: "This is our third page description",
                image: Image.network(
                    "https://cdn1.smartprix.com/rx-iEfM9LzwK-w1200-h1200/EfM9LzwK.jpg")),
          ],
          onDone: () {
            checkIsViewed();
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => const HomePage()));
          },
          done: const Text("Done"),
          dotsDecorator: const DotsDecorator(
              size: Size(10, 10),
              activeSize: Size(20, 10),
              activeColor: Colors.red,
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)))),
          showSkipButton: true,
          skip: const Text("Skip"),
          next: const Text("Next"),
        ),
      ),
    );
  }
}
