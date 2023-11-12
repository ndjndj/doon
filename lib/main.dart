
import 'package:doon/internal/config/config.dart';
import 'package:doon/internal/widget/restart/restart.dart';
import 'package:doon/view/util/widget/scaffold_frame/scaffold_frame.dart';
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

class _Main extends StatefulWidget {
  const _Main();

  @override 
  State<_Main> createState() => _State();
}

class _State extends State<_Main> {

  @override 
  void initState() {
    super.initState();
  }

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
      home: const ScaffoldFrame()
    );
  }
}