import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _RandomColorWidgetState();
}

class _RandomColorWidgetState extends State<RandomColorWidget> {

  Random _rng = new Random();

  Color _currentBgColor = Colors.white;
  Color _currentTextColor = Colors.black;

  void _setRandomCurrentColor() {

    setState(() {
      // setting int bytes for random values of each RGB values separately.
      // (Alpha not generated and always at max)
      int alpha = 255 * 256 * 256 * 256;
      int redBg = _rng.nextInt(255) * 256 * 256;
      int greenBg = _rng.nextInt(255) * 256;
      int blueBg = _rng.nextInt(255);


      // setting the opposite values to color of the text
      int redText = 255 * 256 * 256 - redBg;
      int greenText = 255 * 256 - greenBg;
      int blueText = 255 - blueBg;

      _currentBgColor = Color(alpha+redBg+greenBg+blueBg);
      _currentTextColor = Color(alpha+redText+greenText+blueText);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _setRandomCurrentColor(),
      child: Container(
        color: _currentBgColor,
        child: Center(
          child: Text(
            "Hey there!",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: _currentTextColor,
            ),
          ),
        ),
      ),
    );
  }

}