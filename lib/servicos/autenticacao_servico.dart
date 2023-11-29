import 'package:firebase_auth/firebase_auth.dart';

class AutenticacaoServico {
  //pediu uma instancia do firebases
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  cadastrar({
    required String email,
    required String senha,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: senha,
    );
  }

  logar({
    required String email,
    required String senha,
  }) async {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: senha,
    );
  }
}
