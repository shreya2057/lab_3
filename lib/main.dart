import 'package:flutter/material.dart';
import 'package:lab3/function.dart';
import 'package:lab3/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String message = "Driving in from the edge of town";
    CipherBlockChain cbc = CipherBlockChain(message);

    return MaterialApp(
      title: 'Lab 3',
      home: HomeScreen(message: message, cbc: cbc),
    );
  }
}
