import 'package:flutter/material.dart';
import 'package:social_app/views/search.dart';

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
        textTheme: TextTheme(
          caption: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          labelMedium: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
          headline1: TextStyle(
            color: Colors.black.withOpacity(0.8),
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          headline2: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(
        body: SearchView(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 0,
          selectedItemColor: Colors.red,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_rounded, size: 60, color: Colors.red),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer_outlined),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
