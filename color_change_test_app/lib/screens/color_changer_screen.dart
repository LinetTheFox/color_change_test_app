import 'package:color_change_test_app/widgets/random_color_widget.dart';
import 'package:flutter/material.dart';

/// Main screen of the app. 
/// 
/// Contains the color changing widget.
class ColorChangerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tap below to change BG color."),
        ),
        body: RandomColorWidget(),
      )
    );
  }

}