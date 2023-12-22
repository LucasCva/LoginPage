import 'package:flutter/material.dart';
import 'package:responsividade/components/email_textfield.dart';
import 'package:responsividade/components/senha_textfield.dart';
import 'package:responsividade/components/text_register.dart';
import 'package:responsividade/servicos/autenticacao_servico.dart';

class LoginPageD extends StatefulWidget {
  const LoginPageD({super.key});

  @override
  State<LoginPageD> createState() => _LoginPageDState();
}

class _LoginPageDState extends State<LoginPageD> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    AutenticacaoServico _autenticacao = AutenticacaoServico();
    return Scaffold(
        body: Column(
      children: [
        // Text "Login"
        Padding(
          padding: EdgeInsets.fromLTRB(0, screenHeight * 0.1, 0, 0),
          child: const Center(
            child: Text(
              "L O G I N",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),

        SizedBox(
          height: screenHeight * 0.05,
        ),

        // TextField Email
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.02, vertical: screenHeight * 0.02),
          child: SizedBox(width: 470, child: emailTextFIeld()),
        ),

        //TextField Senha
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.02, vertical: screenHeight * 0.02),
          child: SizedBox(width: 470, child: senhaTextField()),
        ),

        SizedBox(
          height: screenHeight * 0.03,
        ),

        //botão entrar
        GestureDetector(
          onTap: () {
            _autenticacao.logar(
              email: emailTextFIeld.emailController.text,
              senha: senhaTextField.senhaController.text,
            );
          },
          child: Container(
            height: 60,
            width: 470,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromARGB(255, 54, 54, 54),
            ),
            child: const Center(
              child: Text(
                "Entrar",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.05),
          child: const TextResgister(),
        ),
      ],
    ));
  }
}
