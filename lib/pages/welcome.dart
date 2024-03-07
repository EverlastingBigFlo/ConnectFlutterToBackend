import 'package:flutter/material.dart';
import 'package:form/components/animations/button.dart';
import 'package:form/components/animations/first_animation.dart';
import 'package:form/components/animations/grow.dart';
import 'package:form/components/animations/image_one.dart';
import 'package:form/components/animations/image_two.dart';
import 'package:form/components/animations/let_get.dart';
import 'package:form/components/animations/second_animation.dart';
import 'package:form/components/animations/started.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late SharedPreferences prefs;

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 5000),
        () => {Navigator.pushNamed(context, 'signup')});
  }

  void setLogin() async {
    prefs = await SharedPreferences.getInstance();

    bool? data = prefs.getBool('signin');

    if (data == true) {
      Navigator.pushNamed(context, 'signin');
    } else {
      Navigator.pushNamed(context, 'signup');
    }
  }

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
            left: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LetGet(),
                Started(),
                Grow(),
              ],
            ),
          ),
          // Positioned(bottom: 60, left: 90, child: Button()),
        ],
      ),
    );
  }
}
