import 'package:flutter/material.dart';

class BallKicking extends StatefulWidget {
  const BallKicking({Key? key}) : super(key: key);

  @override
  _BallKickingState createState() => _BallKickingState();
}

class _BallKickingState extends State<BallKicking> {
  static const max = 30.0;
  var dy = max;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      child: Column(
        children: [
          Image.asset(
            'images/ball.png',
            width: MediaQuery.of(context).size.width / 3.5,
          ),
        ],
      ),
      tween: Tween(begin: 0, end: dy),
      duration: const Duration(seconds: 1),
      builder: (_, value, Widget? child) {
        return Column(
          children: [
            Transform.translate(
              offset: Offset(0, value),
              child: Column(
                children: [
                  child!,
                ],
              ),
            ),
            Opacity(
              opacity: (value + max) / max,
              child: ClipOval(
                child: Container(
                  color: Colors.black.withOpacity(0.2),
                  height: 15,
                  width: 70,
                ),
              ),
            ),
          ],
        );
      },
      onEnd: () {
        setState(() {
          dy = dy == -max ? 0 : -max;
        });
      },
    );
  }
}
