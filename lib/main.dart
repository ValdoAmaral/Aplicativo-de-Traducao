import 'package:flutter/material.dart';
import 'package:tradutor_local/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tradutor oficial',
      theme: ThemeData(
       // primarySwatch: Colors.white,
      ),
      home:MyHomePage(),
    );
  }
}

