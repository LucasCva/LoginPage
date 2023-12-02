import 'package:flutter/material.dart';

// ignore: camel_case_types
class senhaTextField extends StatefulWidget {
  const senhaTextField({super.key});

  static final senhaController = TextEditingController();

  @override
  State<senhaTextField> createState() => _senhaTextFieldState();
}

// ignore: camel_case_types
class _senhaTextFieldState extends State<senhaTextField> {
  bool _passwordIsNotVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: senhaTextField.senhaController,
      obscureText: _passwordIsNotVisible,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        hintText: "Senha",
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _passwordIsNotVisible = !_passwordIsNotVisible;
            });
          },
          child: Icon(
            _passwordIsNotVisible ? Icons.visibility_off : Icons.visibility,
          ),
        ),
      ),
    );
  }
}
