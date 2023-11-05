import 'package:flutter/material.dart';

class Restart extends StatefulWidget {
  const Restart({
    Key? key,
    required this.child
  }) : super(key: key);

  final Widget child;

  @override
  State<Restart> createState() => _RestartState();

  static void restartApp(BuildContext context) {
    final s = context.findAncestorStateOfType<_RestartState>();
    print(s);
    if (s != null) {
      s.restartApp();
    }
  }

  static void forceReload(BuildContext context) {
    context.findAncestorStateOfType<_RestartState>()!.forceReload();
  }
}

class _RestartState extends State<Restart> {
  Key _key = UniqueKey();

  void restartApp() {
    setState(() {
      _key = UniqueKey();
    });
  }

  void forceReload() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: _key,
      child: widget.child
    );
  }
}
