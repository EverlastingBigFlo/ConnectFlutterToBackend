import 'package:flutter/material.dart';

class Started extends StatefulWidget {
  const Started({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StartedState createState() => _StartedState();
}

class _StartedState extends State<Started> with SingleTickerProviderStateMixin {
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
        'Let\'s Get',
        style: TextStyle(
          fontSize: 75,
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
