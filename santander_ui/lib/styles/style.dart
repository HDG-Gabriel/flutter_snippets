import 'package:flutter/material.dart';

abstract class Style {
  static const optionText = TextStyle(
    color: Colors.grey,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const joinText = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static final defaultButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.grey,
  );

  static final joinButtonStyle = ElevatedButton.styleFrom(
    primary: const Color.fromRGBO(235, 28, 36, 1),
  );

  static const bannerTitleText = TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const defaultSpanStyle = TextStyle(
    fontSize: 16,
  );

  static const bannerBoldText = TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
  );

  static final simulateButton = ElevatedButton.styleFrom(
    primary: Colors.yellow,
    shape: const StadiumBorder(),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
  );
}