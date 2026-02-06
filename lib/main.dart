import 'package:e_learning_app/Pages/Home.dart';
import 'package:e_learning_app/Pages/Login.dart';
import 'package:e_learning_app/Pages/Rough.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      debugShowCheckedModeBanner: false,
      home: Login()
    );
  }
}
