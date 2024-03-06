import 'package:flutter/material.dart';

class SignInWelcomeBack extends StatefulWidget {
  const SignInWelcomeBack({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignInWelcomeBackState createState() => _SignInWelcomeBackState();
}

class _SignInWelcomeBackState extends State<SignInWelcomeBack>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _animation = Tween<Offset>(begin: const Offset(-2.0, 0.1), end: Offset.zero)
        .animate(_controller);

    Future.delayed(const Duration(seconds: 1), () {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: const Text(
        'Welcome Back',
        style: TextStyle(
          fontSize: 32,
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

// account widget

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _animation = Tween<Offset>(begin: const Offset(3.0, 0.1), end: Offset.zero)
        .animate(_controller);

    Future.delayed(const Duration(seconds: 1), () {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: const Text(
        'Account :)',
        style: TextStyle(
          fontSize: 32,
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
