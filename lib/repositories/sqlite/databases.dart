import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

class Databases {
  static Database? db;

  Future<Database> getDatabase() async {
    if (db == null) {
      return await iniciarBancoDeDados();
    } else {
      return db!;
    }
  }

  Map<int, String> scripts = {
    1: ''' CREATE TABLE imc (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  age TEXT,
  weight REAL,
  height REAL,
  imc REAL
);
'''
  };
  Future<Database> iniciarBancoDeDados() async {
    var db = await openDatabase(path.join(await getDatabasesPath(), 'imc.db'),
        version: scripts.length, onCreate: (Database db, int index) async {
      for (var i = 1; i <= scripts.length; i++) {
        await db.execute(scripts[i]!);
        debugPrint(scripts[i]);
      }
    }, onUpgrade: (Database db, int oldVersion, int newVersion) async {
      for (var i = oldVersion + 1; i <= scripts.length; i++) {
        await db.execute(scripts[i]!);
        debugPrint(scripts[i]);
      }
    });
    return db;
  }
}
