import 'dart:async';
import 'package:basic_form/Screen1.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  return  openDatabase(
    join(await getDatabasesPath(), 'doggie_database.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, phone_no TEXT, email TEXT, current_address TEXT, town TEXT, district TEXT, post_office TEXT, state TEXT, country TEXT, pin TEXT, dob TEXT, age TEXT, designation TEXT, income TEXT, sex TEXT, religion TEXT)',
      );
    },
    version: 3,
  );
}
  Future<void> insertDog(Dog dog) async {
    final db = await init();
    await db.insert(
      'dogs',
      dog.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }




  Future<void> updateDog(Dog dog) async {
    final db = await init();
    await db.update(
      'dogs',
      dog.toMap(),
      where: 'id = ?',
      whereArgs: [dog.id],
    );
  }

  Future<void> deleteDog(int id) async {
    final db = await init();
    await db.delete(
      'dogs',
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

class Dog {
  final int id;
  final String name;
  final String age;
  final String email;
  final String phone_no;
  final String curr_add;
  final String town;
  final String dist;
  final String po;
  final String state;
  final String country;
  final String pincode;
  final String dob;
  final String desg;
  final String income;
  final String sex;
  final String religion;

  const Dog({
    required this.id,
    required this.name,
    required this.phone_no,
    required this.email,
    required this.curr_add,
    required this.town,
    required this.dist,
    required this.po,
    required this.state,
    required this.country,
    required this.pincode,
    required this.dob,
    required this.age,
    required this.desg,
    required this.income,
    required this.sex,
    required this.religion
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phone_no': phone_no,
      'email': email,
      'current_address': curr_add,
      'town': town,
      'district': dist,
      'post_office': po,
      'state': state,
      'country': country,
      'pin': pincode,
      'dob':dob,
      'age': age,
      'designation':desg,
      'income':income,
      'sex':sex,
      'religion':religion
    };
  }

  @override
  String toString() {
    return '{id: $id,name: $name,phone_no: $phone_no,email: $email, current_address: $curr_add,town: $town,district: $dist, post_office: $po,state: $state,country: $country,pin: $pincode,dob:$dob,age: $age,designation:$desg,income:$income,sex:$sex,religion:$religion}';
  }
}