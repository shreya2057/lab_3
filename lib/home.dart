import 'package:flutter/material.dart';
import 'package:lab3/display.dart';
import 'package:lab3/function.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.message,
    required this.cbc,
  }) : super(key: key);

  final String message;
  final CipherBlockChain cbc;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Lab 3")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(message),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    var result = cbc.des();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Display(
                            encryptedText: result[0], originalMsg: result[1])));
                  },
                  child: const Text("DES encrypt")),
            ],
          ),
        ),
      ),
    );
  }
}
