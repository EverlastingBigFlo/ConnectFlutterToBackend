import 'package:flutter/material.dart';
import 'package:form/components/animations/button.dart';
import 'package:form/components/animations/first_animation.dart';
import 'package:form/components/animations/grow.dart';
import 'package:form/components/animations/image_one.dart';
import 'package:form/components/animations/image_two.dart';
import 'package:form/components/animations/let_get.dart';
import 'package:form/components/animations/second_animation.dart';
import 'package:form/components/animations/started.dart';
// import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF0F4F3),
      body: Stack(
        children: [
          Positioned(left: 20, top: -150, child: FirstCircle()),
          Positioned(left: 210, bottom: 310, child: SecondCircle()),
          Positioned(left: 270, top: 140, child: ImageOne()),
          Positioned(left: 100, bottom: 400, child: ImageTwo()),
          Positioned(
            bottom: 150,
            left: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LetGet(),
                Started(),
                Grow(),
              ],
            ),
          ),
          Positioned(bottom: 70, left: 90, child: Button()),
        ],
      ),
    );
  }
}
