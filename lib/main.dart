import 'package:first_pr/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: GradientContainer(
         const Color.fromARGB(255, 33, 5, 109),
          const Color.fromARGB(255, 68, 21, 149),
        ),
      ),
    ),
  );
}