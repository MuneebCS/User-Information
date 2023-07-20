import 'package:flutter/material.dart';
import 'package:identify_user/screens/HomePage.dart'; // Make sure to provide the correct file path

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Identify User",
      home: HomePage(),
    );
  }
}
