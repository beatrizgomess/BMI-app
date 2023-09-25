import 'package:bmi_app/models/enum_genre.dart';
import 'package:flutter/material.dart';

class Person {
  int? id = 0;
  String _name = "";
  String _age = "";
  double _weight = 0.0;
  double _height = 0.0;

  double _imc = 0.0;

  Person(this.id, this._name, this._age, this._weight, this._height, this._imc);

  double get imc => _imc;

  set imc(double value) {
    _imc = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get age => _age;

  set age(String value) {
    _age = value;
  }

  double get weight => _weight;

  set weight(double value) {
    _weight = value;
  }

  double get height => _height;

  set height(double value) {
    _height = value;
  }
}
