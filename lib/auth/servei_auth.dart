import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ServeriAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<UserCredential> registreEmailPassword(String email, password) async {
    
    
    try {
      UserCredential credencialusuari = await _auth
        .createUserWithEmailAndPassword(
          email: email, 
          password: password
        );

        _firestore.collection("Usuaris").doc(credencialusuari.user!.uid).set({
          "uid": credencialusuari.user!.uid,
          "email": email,
          "nom": "",
        });

        return credencialusuari;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }

    
  }
}
