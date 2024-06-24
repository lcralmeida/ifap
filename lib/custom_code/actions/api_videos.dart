// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;

Future apiVideos(BuildContext context) async {
  try {
    final response = await http
        .get(Uri.parse('http://app-codepoint.com.br:8093/listavideos/0'));

    if (response.statusCode == 200) {
      // Sucesso na requisição
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Data fetched successfully!')),
      );
    } else {
      // Erro na resposta
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
