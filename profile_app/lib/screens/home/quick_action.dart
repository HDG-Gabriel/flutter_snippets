import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:profile_app/utils/text.dart';

class QuickAction extends StatelessWidget {
  final Color color;
  final String text;
  final LinearGradient gradient;
  final String image;

  static const blueGradient = LinearGradient(
    colors: <Color>[Color(0xFF0075D1), Color(0xFF00A2E3)],
    stops: <double>[0.4, 0.6],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );

  static const purpleGraient = LinearGradient(
    colors: <Color>[Color(0xFF882DEB), Color(0xFF9A4DFF)],
    stops: <double>[0.5, 0.7],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const redGradient = LinearGradient(
    colors: <Color>[Color(0xFFBA110E), Color(0xFFCF3110)],
    stops: <double>[0.6, 0.8],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
  );

  const QuickAction({
    required this.text,
    required this.color,
    required this.gradient,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(20);

    return Card(
      borderOnForeground: true,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: radius),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
            decoration: BoxDecoration(
              borderRadius: radius,
              gradient: gradient,
            ),
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  softWrap: true,
                  maxLines: 2,
                  style: ThemeText.quickAction,
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.2,
            child: Transform.translate(
              offset: const Offset(30, -10),
              child: Transform.rotate(
                alignment: Alignment.centerRight,
                angle: -math.pi / 4,
                child: Image.asset(
                  image,
                  height: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
