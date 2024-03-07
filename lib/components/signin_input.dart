import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignInInput extends StatefulWidget {
  late TextEditingController? controllers;
  late FocusNode? focusnode;

  SignInInput({
    super.key,
    this.controllers,
    this.focusnode,
  });

  @override
  State<SignInInput> createState() => _SignInInputState();
}

class _SignInInputState extends State<SignInInput> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // InputField(label: 'Username'),
            // SizedBox(height: 40.0),
            // InputField(label: 'Password', isObscure: true),
            // SizedBox(height: 40.0),
            InputField(
              label: '',
            ),
            SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String label;
  final bool isObscure;

  const InputField({super.key, required this.label, this.isObscure = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black, fontSize: 18),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2.0),
        ),
      ),
    );
  }
}
