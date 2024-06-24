// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;

Future apiCursos(BuildContext context) async {
  bool resultado;
  try {
    final response = await http
        .get(Uri.parse('http://app-codepoint.com.br:8093/listarcursos'));

    if (response.statusCode == 200) {
      // Sucesso na requisição
      resultado = true;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Data fetched successfully!')),
      );
    } else {
      // Erro na resposta
      resultado = false;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${response.statusCode}')),
      );
    }
  } catch (e) {
    // Erro na conexão com o servidor
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Server is down. Please try again later.')),
    );
  }
}
