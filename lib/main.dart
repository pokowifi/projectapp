import 'package:flutter/material.dart';
import 'package:projectapp/screen/edit.dart';
import 'package:projectapp/screen/login.dart';
import 'package:projectapp/screen/mainpage.dart';
import 'package:projectapp/screen/managerice.dart';
import 'package:projectapp/widget/listrice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Managerice(),
    );
  }
}
