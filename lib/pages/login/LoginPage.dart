import 'package:flutter/material.dart';
import 'package:responsividade/classes/ResponsiveLayout.dart';
import 'package:responsividade/pages/login/LoginPageMobile.dart';
import 'package:responsividade/pages/login/LoginPageDesktop.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        //usa uma classe criado que verifica o tamanho da tela
        body: ResponsiveLayout(
            layoutMobile: LoginPageM(), layoutDesktop: LoginPageD()));
  }
}
