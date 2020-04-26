import 'package:color_change_test_app/widgets/random_color_widget.dart';
import 'package:flutter/material.dart';

class ColorChangerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RandomColorWidget(),
      )
    );
  }

}