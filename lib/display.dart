import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display(
      {required this.encryptedText, required this.originalMsg, super.key});

  final String encryptedText;
  final String originalMsg;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Result"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("The encrypted text is: $encryptedText"),
            Text("The original text is: $originalMsg"),
          ],
        )),
      ),
    );
  }
}
