import 'package:firebase_auth/firebase_auth.dart';

class ServeriAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> registreEmailPassword(String email, password) async {
    try {
      UserCredential credencialusuari = await _auth
        .createUserWithEmailAndPassword(
          email: email, 
          password: password
        );
        return credencialusuari;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }

    
  }
}
