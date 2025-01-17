// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';

import 'package:flutter/services.dart';
import 'dart:io';

Future closeApp() async {
  // Add your function code here!

  if (Platform.isAndroid) {
    // se for Androide
    SystemNavigator.pop();
  } else if (Platform.isIOS) {
    // se for IoS
    exit(0);
  }
}
