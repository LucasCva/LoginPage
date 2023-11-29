import 'package:flutter/material.dart';

class senhaTextField extends StatelessWidget {
  senhaTextField({super.key});

  static final senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: senhaController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        hintText: "Senha",
      ),
    );
  }
}
