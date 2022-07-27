import 'package:app_note/auth/login.dart';
import 'package:app_note/auth/signUp.dart';
import 'package:app_note/curd/addnotes.dart';
import 'package:app_note/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Note',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,


      ),
      home: const Login(),
      routes:{
       'login':(context) => const Login(),
       'signup':(context) =>const Signup(),
       'home':(context) => HomePage(),
       'addnotes':(context) => AddNotes(),        
      },
    );
  }
}
