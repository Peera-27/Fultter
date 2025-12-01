import 'package:flutter/material.dart';
import 'package:w3/screen/input_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Color(0xff0a0d22)),
      home: InputScreen() ,
    );
  }
}
