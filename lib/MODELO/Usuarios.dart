import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Usuarios {
  String _id;
  String _nombre;
  String _correo;
  String _telefono;
  String _contasena;
  String _confirmacion;

  Usuarios(this._nombre, this._correo, this._telefono, this._contasena,
      this._confirmacion);

  Usuarios.map(dynamic obj) {
    this._nombre = obj['nombre'];
    this._correo = obj['correo'];
    this._telefono = obj['telefono'];
    this._contasena = obj['contrasena'];
    this._confirmacion = obj['confirmacion'];
  }

  String get id => _id;
  String get nombre => _nombre;
  String get correo => _correo;
  String get telefono => _telefono;
  String get contrasena => _contasena;
  String get confirmacion => _confirmacion;

  Usuarios.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _nombre = snapshot.value['nombre'];
    _correo = snapshot.value['correo'];
    _telefono = snapshot.value['telefono'];
    _contasena = snapshot.value['contrasena'];
    _confirmacion = snapshot.value['confirmacion'];
  }
}
