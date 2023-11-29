import 'package:flutter/material.dart';
import 'package:responsividade/components/email_textfield.dart';
import 'package:responsividade/components/senha_textfield.dart';
import 'package:responsividade/servicos/autenticacao_servico.dart';

class RegisterPageM extends StatefulWidget {
  const RegisterPageM({super.key});

  @override
  State<RegisterPageM> createState() => _RegisterPageMState();
}

class _RegisterPageMState extends State<RegisterPageM> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    AutenticacaoServico _autenticacao = AutenticacaoServico();

    return Scaffold(
        body: Column(
      children: [
        // Text "Login"
        Padding(
          padding: EdgeInsets.fromLTRB(0, screenHeight * 0.1, 0, 0),
          child: const Center(
            child: Text(
              "R E G I S T E R",
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
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: SizedBox(width: 470, child: emailTextFIeld()),
        ),

        //TextField Senha
        SizedBox(width: 470, child: senhaTextField()),

        SizedBox(
          height: screenHeight * 0.03,
        ),

        GestureDetector(
          onTap: () {
            _autenticacao.cadastrar(
                email: emailTextFIeld.emailController.text,
                senha: senhaTextField.senhaController.text);
            ;
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
                "Registrar",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
