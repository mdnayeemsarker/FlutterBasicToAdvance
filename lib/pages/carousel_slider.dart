import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class CarouselSliderPage extends StatelessWidget {
  const CarouselSliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CarouselSliderp();
  }
}

class CarouselSliderp extends StatefulWidget {
  const CarouselSliderp({super.key});

  @override
  State<CarouselSliderp> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSliderp> {
  Future getImageFromFirebase() async {
    var firestore = FirebaseFirestore.instance;
    QuerySnapshot qn =
        firestore.collection("SliderImages").get() as QuerySnapshot<Object?>;
    return qn.docs;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: getImageFromFirebase(),
          builder: (context, snapshot) {
            return CarouselSlider.builder(
                slideBuilder: (index) {
                  DocumentSnapshot sliderImage = snapshot.data[index];
                  return Container(
                    child: Image.network(sliderImage['img']),
                  );
                },
                // ignore: prefer_const_constructors
                slideTransform: CubeTransform(
                  rotationAngle: 0,
                ),
                slideIndicator: CircularSlideIndicator(
                    indicatorBorderColor: Colors.black,
                    currentIndicatorColor: Colors.pink),
                itemCount: snapshot.data.length);
          },
        ),
      ),
    );
  }
}
