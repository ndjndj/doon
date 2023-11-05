
import 'package:doon/internal/config/config.dart';
import 'package:doon/internal/widget/restart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const Main()
  );
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override 
  Widget build(BuildContext context) {
    return const Restart(
      child: ProviderScope(
        child: _Main()
      ),
    );
  }
}

class _Main extends StatelessWidget {
  const _Main();

  @override Widget build(BuildContext context) {
    return MaterialApp(
      title: Config.title,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: false,
        textTheme: GoogleFonts.kiwiMaruTextTheme(
          Theme.of(context).textTheme
        ),
        primarySwatch: Colors.indigo
      ),
      home: KeyboardDismissOnTap(
        child: DecoratedBox(
          decoration: Config.background,
          child: Scaffold(
            backgroundColor: const Color(0xFFFFFFFF).withOpacity(0.4),
          )
        )
      ),
    );
  }
}