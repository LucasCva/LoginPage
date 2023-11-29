import 'package:flutter/material.dart';
import 'package:responsividade/pages/register/RegisterPage.dart';

class TextResgister extends StatefulWidget {
  const TextResgister({super.key});

  @override
  State<TextResgister> createState() => _TextResgisterState();
}

class _TextResgisterState extends State<TextResgister> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const RegisterPage()));
        },
        child: const Text(
          "CRIE SUA CONTA AQUI",
          style:
              TextStyle(fontSize: 30, color: Color.fromARGB(255, 77, 77, 77)),
        ),
      ),
    );
  }
}
