import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _VarBase64Image = '';
  String get VarBase64Image => _VarBase64Image;
  set VarBase64Image(String value) {
    _VarBase64Image = value;
  }

  String _valueFormat = '';
  String get valueFormat => _valueFormat;
  set valueFormat(String value) {
    _valueFormat = value;
  }

  double _propPrice = 0.0;
  double get propPrice => _propPrice;
  set propPrice(double value) {
    _propPrice = value;
  }

  List<String> _imagemLista = [];
  List<String> get imagemLista => _imagemLista;
  set imagemLista(List<String> value) {
    _imagemLista = value;
  }

  void addToImagemLista(String value) {
    imagemLista.add(value);
  }

  void removeFromImagemLista(String value) {
    imagemLista.remove(value);
  }

  void removeAtIndexFromImagemLista(int index) {
    imagemLista.removeAt(index);
  }

  void updateImagemListaAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    imagemLista[index] = updateFn(_imagemLista[index]);
  }

  void insertAtIndexInImagemLista(int index, String value) {
    imagemLista.insert(index, value);
  }
}
