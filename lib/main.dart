import 'package:flutter/material.dart';
import 'package:adv_basics_flutter/gradientContainer.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 208, 180),
      body: GradientContainer(),
    ),
  ));
}
