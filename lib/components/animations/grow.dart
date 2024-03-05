import 'package:flutter/material.dart';

class Grow extends StatefulWidget {
  const Grow({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GrowState createState() => _GrowState();
}

class _GrowState extends State<Grow> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _animation = Tween<Offset>(begin: const Offset(0.0, 0.2), end: Offset.zero)
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
        'Grow Together',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
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
