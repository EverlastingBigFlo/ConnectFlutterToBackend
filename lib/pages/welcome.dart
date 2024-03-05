import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F4F3),
      body: Stack(
        children: [
          Positioned(
            // left: -100,
            child: Container(
              width: 460,
              height: 460,
              decoration: BoxDecoration(
                color: Color(0xFFFF2365),
                borderRadius: BorderRadius.circular(200),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
