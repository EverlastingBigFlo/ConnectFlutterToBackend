import 'package:flutter/material.dart';

class ImageTwo extends StatefulWidget {
  const ImageTwo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ImageTwoState createState() => _ImageTwoState();
}

class _ImageTwoState extends State<ImageTwo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _animation = Tween<Offset>(begin: const Offset(-0.1, 1.0), end: Offset.zero)
        .animate(_controller);
    Future.delayed(const Duration(seconds: 1), () {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: const CircleAvatar(
        radius: 90,
        backgroundImage: AssetImage('lib/assets/downimage.png'),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
