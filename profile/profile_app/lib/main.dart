import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/profile.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          bodyText2: TextStyle(
            color: Colors.black,
            fontSize: 19,
          ),
          caption: TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
          headline1: GoogleFonts.josefinSans(
            fontSize: 29,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Profile();
}
