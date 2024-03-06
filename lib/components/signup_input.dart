import 'package:flutter/material.dart';

class SignUpInput extends StatefulWidget {
  const SignUpInput({super.key});

  @override
  State<SignUpInput> createState() => _SignUpInputState();
}

class _SignUpInputState extends State<SignUpInput> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputField(label: 'Enter Email Id'),
          SizedBox(height: 40.0),
          InputField(label: 'Create Username'),
          SizedBox(height: 40.0),
          InputField(label: 'Create Password', isObscure: true),
        ],
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
          borderSide: BorderSide(color: Colors.black, width: 5.0),
        ),
      ),
    );
  }
}
