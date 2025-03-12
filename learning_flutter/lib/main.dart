import 'package:flutter/material.dart';
// import 'package:learning_flutter/Screens/login_screen.dart';
// import 'package:learning_flutter/Screens/registration_screen.dart';
// import 'package:learning_flutter/Screens/list_builder.dart';
import 'package:learning_flutter/Screens/Lab5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Lab5(),
    );
  }
}
