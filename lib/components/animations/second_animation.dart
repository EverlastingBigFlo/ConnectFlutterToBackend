import 'package:flutter/material.dart';

class SecondCircle extends StatefulWidget {
  const SecondCircle({super.key});

  @override
  _SecondCircleState createState() => _SecondCircleState();
}

class _SecondCircleState extends State<SecondCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _animation = Tween<Offset>(begin: const Offset(-1.0, 0.0), end: Offset.zero)
        .animate(_controller);
    _controller.fling();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Container(
        width: 460,
        height: 460,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 193, 210, 220),
          borderRadius: BorderRadius.circular(250),
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
