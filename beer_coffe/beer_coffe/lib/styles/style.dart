import 'package:flutter/material.dart';

class StyleWelcomeScreen {
  static const TextStyle title = TextStyle(
    color: Colors.black,
    letterSpacing: 2.2,
    fontSize: 23,
  );

  static const title2 = TextStyle(
    color: Colors.black,
    fontSize: 31,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle body = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static final ButtonStyle buttonSignIn = ElevatedButton.styleFrom(
    primary: Colors.black,
    shape: StadiumBorder(),
    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
    textStyle: TextStyle(
      fontSize: 18,
    ),
  );

  static final ButtonStyle buttonSignUp = ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.black,
    shape: StadiumBorder(),
    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
    textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  );
}
