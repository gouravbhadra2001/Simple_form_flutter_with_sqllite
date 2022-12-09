import 'dart:async';
import 'package:basic_form/Screen1.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> init1() async {
  WidgetsFlutterBinding.ensureInitialized();
  return  openDatabase(
    join(await getDatabasesPath(), 'cat_database.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE cats(id INTEGER PRIMARY KEY, School_Name_X TEXT, Board_name_X TEXT,School_Address_X TEXT,Aggregate_X TEXT,School_Name_XII TEXT, Board_name_XII TEXT, School_Address_XII TEXT, Aggregate_XII TEXT, College_Name_UG TEXT,University_name_UG TEXT, College_Address_UG TEXT, CGPA_UG TEXT)'
      );
    },
    version: 2,
  );
}
Future<void> insertCat(Cat cat) async {
  final db = await init1();
  await db.insert(
    'cats',
    cat.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<void> updateCat(Cat cat) async {
  final db = await init1();
  await db.update(
    'dogs',
    cat.toMap(),
    where: 'id = ?',
    whereArgs: [cat.id],
  );
}

Future<void> deleteCat(int id) async {
  final db = await init1();
  await db.delete(
    'cats',
    where: 'id = ?',
    whereArgs: [id],
  );
}
/*
  var fido = const Dog(
    id: 0,
    name: 'Fido',
    age: "35",
  );*/

class Cat {
  final int id;
  final String xschoolname;
  final String xboardname;
  final String xaddress;
  final String xaggregate;
  final String xiischoolname;
  final String xiiboardname;
  final String xiiaddress;
  final String xiiaggregate;
  final String collegename;
  final String univname;
  final String coladdress;
  final String cgpa;

  const Cat({
    required this.id,
    required this.xschoolname,
    required this.xboardname,
    required this.xaddress,
    required this.xaggregate,
    required this.xiischoolname,
    required this.xiiboardname,
    required this.xiiaddress,
    required this.xiiaggregate,
    required this.collegename,
    required this.univname,
    required this.coladdress,
    required this.cgpa,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'School_Name_X': xschoolname,
      'Board_name_X': xboardname,
      'School_Address_X': xaddress,
      'Aggregate_X': xaggregate,
      'School_Name_XII': xiischoolname,
      'Board_name_XII': xiiboardname,
      'School_Address_XII': xiiaddress,
      'Aggregate_XII': xiiaggregate,
      'College_Name_UG': collegename,
      'University_name_UG': univname,
      'College_Address_UG': coladdress,
      'CGPA_UG': cgpa,
    };
  }

  @override
  String toString() {
    return '{id: $id, School_Name_X: $xschoolname, Board_name_X: $xboardname,School_Address_X: $xaddress,Aggregate_X: $xaggregate,School_Name_XII: $xiischoolname, Board_name_XII: $xiiboardname, School_Address_XII: $xiiaddress, Aggregate_XII: $xiiaggregate, College_Name_UG: $collegename,University_name_UG: $univname, College_Address_UG: $coladdress, CGPA_UG: $cgpa}';
  }
}