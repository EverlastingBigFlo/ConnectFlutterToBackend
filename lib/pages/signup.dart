import 'package:flutter/material.dart';
import 'package:form/components/animations/create_text.dart';
import 'package:form/components/animations/first_animation.dart';
import 'package:form/components/animations/second_animation.dart';
import 'package:form/components/animations/signup_button.dart';
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
          Positioned(left: -80, top: 50, child: FirstCircle()),
          Positioned(left: 50, bottom: 60, child: SecondCircle()),
          Positioned(top: 0, child: CreateAccount()),
          Positioned(bottom: 60, left: 90, child: SignUpButton()),
        ],
      ),
    );
  }
}
