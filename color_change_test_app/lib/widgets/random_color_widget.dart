import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _RandomColorWidgetState();
}

class _RandomColorWidgetState extends State<RandomColorWidget> {

  Random _rng = new Random();

  Color _currentColor = Colors.white;

  void _setRandomCurrentColor() {
    setState(() {
      // setting int bytes for random values of each RGB values separately.
      // (Alpha not generated and always at max)
      int alpha = 255 * 256 * 256 * 256;
      int red = _rng.nextInt(255) * 256 * 256;
      int green = _rng.nextInt(255) * 256;
      int blue = _rng.nextInt(255);

      _currentColor = Color(alpha+red+green+blue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _setRandomCurrentColor(),
      child: Container(
        color: _currentColor,
        child: Center(
          child: Text(
            "Hey there!",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

}