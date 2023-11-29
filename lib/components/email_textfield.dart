import 'package:flutter/material.dart';

// ignore: camel_case_types
class emailTextFIeld extends StatelessWidget {
  emailTextFIeld({super.key});

  static final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: emailController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        hintText: "Email",
      ),
    );
  }
}
