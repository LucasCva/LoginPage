import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AutenticacaoServico {
  //pediu uma instancia do firebases
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  //cadastra o usuario
  cadastrar({
    required String email,
    required String senha,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: senha,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        print("Email ja está sendo usado");
      }
    }
  }

  //loga o usuario
  logar({
    required String email,
    required String senha,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: senha,
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e == "firebase_auth/invalid-login-credentials") {
        print("Email ou senha incorretos!!");
      }
    }
  }
}
