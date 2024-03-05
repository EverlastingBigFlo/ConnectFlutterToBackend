import 'package:flutter/material.dart';
import 'package:form/pages/signin.dart';
import 'package:form/pages/signup.dart';
import 'package:form/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome',
      routes: {
        'welcome': (context) => const WelcomePage(),
        'signup': (context) => const SignUp(),
        'signin': (context) => const SignIn(),
      },
    );
  }
}
