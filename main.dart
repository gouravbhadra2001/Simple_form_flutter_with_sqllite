import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screen1.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Basic Form",
    home: Screen1(),
  ));
}