import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login.dart';
import 'registro.dart';
import 'package:app_tareas/paginas/bienvenido.dart'; // Asumiendo que tienes una pantalla de bienvenida

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Inicializar Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthWrapper(), // Verifica si el usuario está autenticado
      routes: {
        '/login': (context) => LoginPage(),
        '/registro': (context) => RegisterPage(),
        '/bienvenido': (context) => BienvenidoPage(), // Pantalla de bienvenida
      },
    );
  }
}

// Clase para verificar si el usuario está autenticado o no
class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(), // Escucha el estado de autenticación
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(body: Center(child: CircularProgressIndicator()));
        } else if (snapshot.hasData) {
          // Si el usuario ya está autenticado, ve a la pantalla de bienvenida
          return BienvenidoPage(); // Asumiendo que tienes esta pantalla
        } else {
          // Si no está autenticado, ve a la pantalla de login
          return LoginPage();
        }
      },
    );
  }
}
