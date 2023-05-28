import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _crearResena = false;
  bool get crearResena => _crearResena;
  set crearResena(bool _value) {
    _crearResena = _value;
  }

  bool _nombreEscrito = false;
  bool get nombreEscrito => _nombreEscrito;
  set nombreEscrito(bool _value) {
    _nombreEscrito = _value;
  }

  bool _likeResena = false;
  bool get likeResena => _likeResena;
  set likeResena(bool _value) {
    _likeResena = _value;
  }

  bool _buscando = false;
  bool get buscando => _buscando;
  set buscando(bool _value) {
    _buscando = _value;
  }

  bool _peliuser = false;
  bool get peliuser => _peliuser;
  set peliuser(bool _value) {
    _peliuser = _value;
  }

  bool _likeUsuario = false;
  bool get likeUsuario => _likeUsuario;
  set likeUsuario(bool _value) {
    _likeUsuario = _value;
  }

  bool _cambioImagen = false;
  bool get cambioImagen => _cambioImagen;
  set cambioImagen(bool _value) {
    _cambioImagen = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
