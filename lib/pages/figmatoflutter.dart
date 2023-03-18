import 'package:flutter/material.dart';

class SignuppageWidget extends StatefulWidget {
  @override
  _SignuppageWidgetState createState() => _SignuppageWidgetState();
}

class _SignuppageWidgetState extends State<SignuppageWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator SignuppageWidget - FRAME

    return Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color: Color.fromRGBO(249, 249, 249, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(top: 778, left: 0, child: Container()),
          Positioned(top: 213, left: 16, child: Container()),
          Positioned(top: 285, left: 16, child: Container()),
          Positioned(top: 357, left: 16, child: Container()),
          Positioned(top: 485, left: 16, child: Container()),
          Positioned(top: 691, left: 88, child: Container()),
          Positioned(
              top: 659,
              left: 86,
              child: Text(
                'Or sign up with social account',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(34, 34, 34, 1),
                    fontFamily: 'Metropolis',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.4285714285714286),
              )),
          Positioned(
              top: 437,
              left: 155,
              child: Text(
                'Already have an account?',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Color.fromRGBO(34, 34, 34, 1),
                    fontFamily: 'Metropolis',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.4285714285714286),
              )),
          Positioned(top: 691, left: 196, child: Container()),
          Positioned(
              top: 435,
              left: 335,
              child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(),
                      //   child: SvgPicture.asset(
                      //   'assets/images/vector.svg',
                      //   semanticsLabel: 'vector'
                      // );
                      // this is the code from figma design
                    ),
                    Positioned(
                      top: 8.700605392456055,
                      left: 4,
                      child: Container(),
                      //   child: SvgPicture.asset(
                      //   'assets/images/vector.svg',
                      //   semanticsLabel: 'vector'
                      // );
                    ),
                  ]))),
          Positioned(top: 0, left: 0, child: Container()),
        ]));
  }
}
