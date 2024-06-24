// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> verificaErro(Future Function() acao) async {
  // Add your function code here!
  try {
    await acao(); //Executa a Action chamada acao
    return false; // Caso não tenha erro retorna False
  } catch (e) {
    // caso contrario cria uma variavel e
    return true; // caso acontece um erro ele retorna True
  }
}
