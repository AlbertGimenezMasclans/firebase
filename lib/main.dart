import 'package:firebase/firebase_options.dart';
import 'package:firebase/paginas/pagina_registro.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MainApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      home: Scaffold(
        body: PaginaRegistro()
      ),
    );
  }
}


/*
  1. Tenir Node.js instalat.
  2. Anar a la web de firebase i anar a la consola ('Go to console')
    - Tenir el compte del roca iniciat
  3. De de la consola, creem un projecte de Firebase
  4. Anem al menu de compilacióni habilitem: 
    - Authentitication i Firestore Database
  5. En una cmd, per exemplela del Visual Studio Code, fem:
    - npm install -g firebase-tools
      (aixo instala Firebase al dispoitiu)
  6. flutter pub global activate flutterfire_cli + dart pub global activate flutterfire_cli
*/