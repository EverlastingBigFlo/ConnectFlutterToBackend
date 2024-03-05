import 'package:flutter/material.dart';

class ImageOne extends StatefulWidget {
  const ImageOne({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ImageOneState createState() => _ImageOneState();
}

class _ImageOneState extends State<ImageOne>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _animation = Tween<Offset>(begin: const Offset(-1.0, 1.0), end: Offset.zero)
        .animate(_controller);
   Future.delayed(const Duration(seconds: 1), (){
     _controller.forward();
   });
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: const CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('lib/assets/upimage.png'),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
