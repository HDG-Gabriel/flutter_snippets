import 'package:flutter/material.dart';

class HomeScreenStyle {
  static final cinza = Colors.grey[300];

  // Texto que comprimenta o usuário
  static const greetingUser = TextStyle(
    color: Colors.white,
    fontSize: 21,
    fontWeight: FontWeight.w500,
  );

  // Estilo de texto genérico para todo o app
  static const genericStyle = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const listItemStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static final labelTextStyle = TextStyle(
    color: Colors.grey[800],
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static final label2TextStyle = TextStyle(
    color: Colors.grey[800],
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  // Estilo dos botões
  static final buttonStyle = ElevatedButton.styleFrom(
    elevation: 0,
    primary: Colors.purple,
    shape: StadiumBorder(),
    textStyle: TextStyle(fontSize: 15),
  );
}
