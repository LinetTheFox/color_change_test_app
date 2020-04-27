import 'package:color_change_test_app/model/color_generator.dart';
import 'package:flutter/material.dart';

/// Widget with color changing feature implementation.
/// 
/// Changes the background color with text inside it 
/// randomly on each tap.
class RandomColorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RandomColorWidgetState();
}

class _RandomColorWidgetState extends State<RandomColorWidget> {
  // colors which are used in background and text and are
  // changed in _setRandomCurrentColor()
  Color _currentBgColor = Colors.white;
  Color _currentTextColor = Colors.black;

  void _setRandomCurrentColor() {

    setState(() {
      Map colors = ColorGenerator.generateInverseColorCodes();

      _currentBgColor = Color(colors["bgColor"]);
      _currentTextColor = Color(colors["textColor"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Uses GestureDetector to detect taps.
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