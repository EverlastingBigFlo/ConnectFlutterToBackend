import 'package:flutter/material.dart';
import 'package:form/components/animations/first_animation.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xFFF0F4F3),
      body: Stack(
        children: [
          const Positioned(left: 20, top: -150, child: FirstCircle()),
          const Positioned(left: 210, bottom: 310, child: SecondCircle()),
          const Positioned(left: 270, top: 140, child: ImageOne()),
          const Positioned(left: 100, bottom: 400, child: ImageTwo()),
          const Positioned(
            bottom: 150,
            left: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LetGet(),
                Started(),
                Text(
                  'Grow Together',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 70,
            left: 90,
            child: ElevatedButton(
              onPressed: () => {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                child: Text(
                  'JOIN NOW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
