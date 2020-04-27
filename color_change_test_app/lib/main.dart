import 'package:color_change_test_app/screens/color_changer_screen.dart';
import 'package:color_change_test_app/theme/style.dart';
import 'package:flutter/material.dart';


/// Starting point of the app.
void main() => runApp(MyApp());


/// Main class that initializes the app.
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Color Changer',
      theme: mainTheme,
      home: SafeArea(
        child: ColorChangerScreen(),
      ),
    );
  }
}