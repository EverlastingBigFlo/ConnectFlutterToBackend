import 'package:flutter/material.dart';

class LetGet extends StatefulWidget {
  const LetGet({Key? key}) : super(key: key);

  @override
  _LetGetState createState() => _LetGetState();
}

class _LetGetState extends State<LetGet> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<Offset>(
      begin: const Offset(-1.0, 0.1),
      end: Offset.zero,
    ).animate(_controller);
    // Start the animation after a delay
    Future.delayed(const Duration(seconds: 3), () {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Check if _animation is null, if it is, return an empty SizedBox
    if (_animation == null) {
      return SizedBox.shrink();
    }
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
