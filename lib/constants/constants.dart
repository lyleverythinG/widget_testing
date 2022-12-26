import 'package:flutter/material.dart';

class Const {
  static const TextStyle kTextStyle = TextStyle(fontSize: 16, height: 1.5);
  static const SizedBox kHeight15 = SizedBox(height: 15);
  static ButtonStyle customButtonStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
    primary: Colors.black87,
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
  );
}
