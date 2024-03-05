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
      body: Stack(children: [
        Positioned(
          left: 20,
          top: -150,
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
        ),
        Positioned(
          left: 210,
          bottom: 310,
          child: Container(
            width: 460,
            height: 460,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 193, 210, 220),
              borderRadius: BorderRadius.circular(250),
            ),
          ),
        ),
        const Positioned(
          left: 270,
          top: 140,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('lib/assets/upimage.png'),
          ),
        ),
        const Positioned(
            left: 100,
            bottom: 400,
            child: CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('lib/assets/downimage.png'),
            )),
        const Positioned(
          bottom: 150,
          left: 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Let\'s Get',
                style: TextStyle(
                  fontSize: 75,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              Text(
                'Started',
                style: TextStyle(
                  fontSize: 75,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              ),
              Text(
                'Grow Together',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 70,
            left: 90,
            child: ElevatedButton(
                onPressed: () => {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('JOIN NOW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inder',
                      )),
                )))
      ]),
    );
  }
}
