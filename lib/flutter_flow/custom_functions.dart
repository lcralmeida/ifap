import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

FFUploadedFile base64ToUploadedFile(String base64) {
// Crie uma funnção que converta um base64 para FFUploadedFile
  final bytes = base64Decode(base64);
  final id = DateTime.now().millisecondsSinceEpoch.toString();
  final extension = base64.split('/').first.split(':').last;
  final fileName = '$id.$extension';
  return FFUploadedFile(
    bytes: bytes,
  );
}

String uploadedFileToBase64(FFUploadedFile file) {
  final base64Codec = Base64Codec();
  return base64Codec.encode(file.bytes!);
}

String? converterBase64PNG(String? imageBase64) {
// converta imagem base 64 em png

  if (imageBase64 == null) {
    return null;
  }

  return 'data:image/png;base64,' + imageBase64;
}

String valorCurso(double valor) {
  // formate o valor para a moeda do brasil exemplo 1.000,00
  final formatador = NumberFormat.currency(locale: 'pt_BR', symbol: 'S/\.');
  return formatador.format(valor);
}

String? newCustomFunction(String? telefone) {
  // formate telefone para o formato do celular do peru exemplo (51) 959-805-608
  if (telefone == null) {
    return null;
  }

  final cleanPhone = telefone.replaceAll(RegExp(r'[^\d]'), '');

  if (cleanPhone.length != 9) {
    return telefone;
  }

  final formattedPhone =
      '(${cleanPhone.substring(0, 2)}) ${cleanPhone.substring(2, 5)}-${cleanPhone.substring(5, 8)}-${cleanPhone.substring(8)}';

  return formattedPhone;
}
