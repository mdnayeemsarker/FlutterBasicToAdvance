import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/hero_widget2.dart';

class HeroWidgetPage extends StatelessWidget {
  const HeroWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePageHero();
  }
}

class HomePageHero extends StatelessWidget {
  const HomePageHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Widget"),
      ),
      body: Center(
        child: CircleAvatar(
          radius: 50,
          child: GestureDetector(
              child: Hero(
                tag: "add",
                child: Icon(
                  Icons.add,
                  size: 100,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HeroWidgetPage2()));
              }),
        ),
      ),
    );
    ;
  }
}
