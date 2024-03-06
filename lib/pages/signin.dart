import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form/components/animations/create_text.dart';
import 'package:form/components/animations/first_animation.dart';
import 'package:form/components/animations/second_animation.dart';
import 'package:form/components/animations/signin_enteryour.dart';
import 'package:form/components/animations/signin_welcomeback.dart';
import 'package:form/components/animations/signup_button.dart';
import 'package:form/components/signup_input.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(240, 244, 243, 1),
      body: Stack(
        children: [
          Positioned(left: -80, top: 50, child: FirstCircle()),
          Positioned(left: 50, bottom: 60, child: SecondCircle()),
          Positioned(top: 65, left: 30, child: SignInWelcomeBack()),
          Positioned(top: 100, left: 30, child: SigninEnterYour()),
          Positioned.fill(
            top: 200,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SignUpInput(),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 90,
            child: SignUpButton(),
          ),
        ],
      ),
    );
  }
}
