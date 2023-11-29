import 'package:flutter/material.dart';
import 'package:responsividade/classes/ResponsiveLayout.dart';
import 'RegisterPageMobile.dart';
import 'RegisterPageDesktop.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        layoutMobile: RegisterPageM(), layoutDesktop: RegisterPageD());
  }
}
