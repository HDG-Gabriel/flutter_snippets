import 'package:flutter/material.dart';
import 'package:medical_app/styles/home_screen_style.dart';

class CustomCard extends StatelessWidget {
  final _title;
  final _text;
  final _textButton;

  static const double _width = 250;
  static const double _height = 160;

  static const _titleStyle = TextStyle(
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );

  CustomCard(
      {required String title, required String text, required String textButton})
      : _title = title,
        _text = text,
        _textButton = textButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: _width,
      height: _height,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_title, style: _titleStyle),
          SizedBox(height: 10),
          Text(_text),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: Text(_textButton),
            style: HomeScreenStyle.buttonStyle,
          ),
        ],
      ),
    );
  }
}
