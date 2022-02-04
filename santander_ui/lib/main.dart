import 'package:flutter/material.dart';
import 'package:santander_ui/views/login/acess_view.dart';
import 'package:santander_ui/views/login/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light().copyWith(
          primary: Colors.grey,
        ),
      ),
      routes: {
        '/': (context) => const LoginView(),
        '/acess': (context) => const AcessView(),
      },
    );
  }
}
