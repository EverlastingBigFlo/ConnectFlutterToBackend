import 'package:flutter/material.dart';
import 'package:form/components/animations/create_text.dart';
import 'package:form/components/animations/first_animation.dart';
import 'package:form/components/animations/second_animation.dart';
import 'package:form/components/animations/signup_button.dart';
import 'package:form/components/signup_input.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Positioned(left: -80, top: 50, child: FirstCircle()),
                Positioned(left: 50, bottom: 60, child: SecondCircle()),
                Positioned(top: 65, left: 30, child: Create()),
                Positioned(top: 100, left: 30, child: Account()),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SignUpInput(),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.fromLTRB(90, 0, 90, 60),
              child: SignUpButton(),
            ),
          ),
        ],
      ),
    );
  }
}
