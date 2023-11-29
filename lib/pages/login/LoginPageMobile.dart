import 'package:flutter/material.dart';
import 'package:responsividade/components/email_textfield.dart';
import 'package:responsividade/components/senha_textfield.dart';
import 'package:responsividade/components/text_register.dart';
import 'package:responsividade/servicos/autenticacao_servico.dart';

class LoginPageM extends StatefulWidget {
  const LoginPageM({super.key});

  @override
  State<LoginPageM> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPageM> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    AutenticacaoServico _autenticacao = AutenticacaoServico();

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Text "Login"
        Padding(
          padding: EdgeInsets.fromLTRB(0, screenHeight * 0.1, 0, 0),
          child: const Center(
            child: Text(
              "L O G I N ",
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
          child: emailTextFIeld(),
        ),

        //TextField Senha
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.02, vertical: screenHeight * 0.02),
            child: senhaTextField()),

        SizedBox(
          height: screenHeight * 0.03,
        ),

        //botão entrar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: GestureDetector(
            onTap: () {
              _autenticacao.logar(
                email: emailTextFIeld.emailController.text,
                senha: senhaTextField.senhaController.text,
              );
              print("Logou");
            },
            child: Container(
              height: 60,
              width: double.infinity,
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
        ),

        Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.05),
          child: const TextResgister(),
        ),
      ],
    ));
  }
}
