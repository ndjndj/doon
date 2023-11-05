
import 'package:doon/internal/config/config.dart';
import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override Widget build(BuildContext context) {
    return MaterialApp(
      title: Config.title,
      themeMode: ThemeMode.system,
    );
  }
}