import 'package:flutter/material.dart';
import 'package:form/components/animations/button.dart';
import 'package:form/components/animations/first_animation.dart';
import 'package:form/components/animations/second_animation.dart';
// import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF0F4F3),
      body: Stack(
        children: [
          Positioned(left: 20, top: -150, child: FirstCircle()),
          Positioned(left: 210, bottom: 310, child: SecondCircle()),
          Positioned(bottom: 60, left: 90, child: Button()),
        ],
      ),
    );
  }
}
