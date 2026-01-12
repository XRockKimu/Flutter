import 'package:flutter/material.dart';
import './models/Firstpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Firstpage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.cyan,
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
    );
  }
}
