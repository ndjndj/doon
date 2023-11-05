
import 'package:doon/internal/config/config.dart';
import 'package:doon/internal/widget/restart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const Restart(
      child: ProviderScope(
        child: Main()
      ),
    )
  );
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override Widget build(BuildContext context) {
    return MaterialApp(
      title: Config.title,
      themeMode: ThemeMode.system,
    );
  }
}