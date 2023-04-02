import 'package:flutter/material.dart';
import 'package:flutter_banking_app/Screen/home_screen.dart';
import 'package:flutter_banking_app/Screen/login_page.dart';
import 'package:flutter_banking_app/Screen/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mahalaxmi Cheat Fund',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home' : (context) => HomeScreen(),
        '/login' : (context) => LoginPage(),
        '/signup' : (context) => SignupPage(),
      },
      initialRoute: '/login',
    );
  }
}