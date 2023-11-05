
import 'package:flutter/material.dart';

class Config {
  Config._();

  static const String title = "doon";

  static const BoxDecoration background = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xFFEF32D9),
        Color(0xFF89FFFD),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight
    ),
  );
}