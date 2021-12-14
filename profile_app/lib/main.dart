import 'package:flutter/material.dart';
import 'package:profile_app/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
      ),
      title: 'Profile',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}