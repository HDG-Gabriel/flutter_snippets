import 'package:flutter/material.dart';

class StyleSignInScreen {
  static final buttonSignIn = ElevatedButton.styleFrom(
    primary: Colors.black,
    onPrimary: Colors.white,
    padding: EdgeInsets.symmetric(vertical: 18),
    shape: StadiumBorder(),
  );

  static final buttonSignInNetwork = ElevatedButton.styleFrom(
    padding: EdgeInsets.all(12),
    primary: Colors.white,
    onPrimary: Colors.black,
    shape: StadiumBorder(),
    textStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 17,
    ),
  );

  static final title = TextStyle(
    fontSize: 31,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.1,
  );

  static final subTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
  );
}
