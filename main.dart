import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aesthetic App',
      debugShowCheckedModeBanner: false,
      home: const Inicio(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.teal,
      ),
      body: const Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Etiqueta(),
          CampoUser(),
          CampoPass(),
          BotonEntrar(),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Etiqueta() {
  return Container(
    margin: const EdgeInsets.only(bottom: 20.0),
    child: const Center(
      child: Text(
        "Sign In",
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'Raleway',
        ),
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget CampoUser() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white70,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget CampoPass() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white70,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget BotonEntrar() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal, // Fondo del botón
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
      ),
      child: const Text(
        "Enter Now",
        style: TextStyle(
            fontSize: 20.0, color: Colors.white, fontFamily: 'Raleway'),
      ),
    ),
  );
}
