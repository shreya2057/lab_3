import 'dart:convert';
import 'package:dart_des/dart_des.dart';

class CipherBlockChain {
  String message;
  CipherBlockChain(this.message);
  // Key size = 8
  String key = '12345678';
  // Initialization vector
  List<int> iv = [1, 2, 3, 4, 5, 6, 7, 8];
  des() {
    List<String> result = [];
    var encrypted = encryption();
    String cipherText = base64.encode(encrypted);
    var decrypted = decryption(encrypted);
    String originalText = utf8.decode(decrypted);
    result.add(cipherText);
    result.add(originalText);
    return result;
  }

  encryption() {
    List<int> encrypted;
    DES desCBC = DES(key: key.codeUnits, mode: DESMode.CBC, iv: iv);
    encrypted = desCBC.encrypt(message.codeUnits);
    return encrypted;
  }

  decryption(List<int> encrypted) {
    DES desCBC = DES(key: key.codeUnits, mode: DESMode.CBC, iv: iv);
    List<int> decrypted;
    decrypted = desCBC.decrypt(encrypted);
    return decrypted;
  }
}
