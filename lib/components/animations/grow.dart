import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      child: Text(
        'Grow Together',
        style: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.normal,
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
