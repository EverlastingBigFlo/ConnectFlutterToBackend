import 'package:flutter/material.dart';

class FirstCircle extends StatefulWidget {
  const FirstCircle({super.key});

  @override
  _FirstCircleState createState() => _FirstCircleState();
}

class _FirstCircleState extends State<FirstCircle>
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
    _controller.forward();
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
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 20,
            ),
          ],
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
