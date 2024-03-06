import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninEnterYour extends StatefulWidget {
  const SigninEnterYour({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SigninEnterYourState createState() => _SigninEnterYourState();
}

class _SigninEnterYourState extends State<SigninEnterYour> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _animation = Tween<Offset>(begin: const Offset(2.0, 0.1), end: Offset.zero)
        .animate(_controller);

    Future.delayed(const Duration(seconds: 1), () {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Text(
        'Enter Your Username & Password',
        style: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          height: 1,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
