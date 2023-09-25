import 'dart:math';
import 'package:bmi_app/models/person.dart';
import 'package:bmi_app/repositories/imc_respository.dart';
import 'package:bmi_app/repositories/sqlite/databases.dart';
import 'package:flutter/material.dart';

class IMCRepositoryImp implements IMCRepository {
  @override
  double calculateIMC(double weight, double height) {
    double imc = weight / (pow(height, 2));
    return double.parse(imc.toStringAsFixed(2));
  }

  @override
  Future<List<Person>> getInfo() async {
    var db = await Databases().getDatabase();
    List<Person> person = [];
    var result =
        await db.rawQuery('SELECT ID, NAME, AGE, WEIGHT, HEIGHT, IMC FROM IMC');
    for (var element in result) {
      person.add(Person(
          int.parse(element["id"].toString()),
          element["name"].toString(),
          element["age"].toString(),
          double.parse(element["weight"].toString()),
          double.parse(element["height"].toString()),
          double.parse(element["imc"].toString())));
      debugPrint('passou');
    }

    return person;
  }

  @override
  Future<void> saveInfo(Person person) async {
    var db = await Databases().getDatabase();
    db.rawInsert(
        'INSERT INTO imc (name, age, weight, height, imc) values(?, ?, ?, ?, ?)',
        [person.name, person.age, person.weight, person.height, person.imc]);
  }

  @override
  double calculatePersonIMC(Person person) {
    double imc = person.weight / (pow(person.height, 2));
    person.imc = imc;
    return double.parse(person.imc.toStringAsFixed(2));
  }
}
