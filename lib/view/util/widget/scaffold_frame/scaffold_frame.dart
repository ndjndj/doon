import 'package:doon/internal/config/config.dart';
import 'package:doon/view/util/repository/view_state_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScaffoldFrame extends ConsumerWidget {
  const ScaffoldFrame({
    super.key
  });

  @override 
  Widget build(BuildContext context, WidgetRef ref) {
    final viewState = ref.watch(viewStateProvider);
    return KeyboardDismissOnTap(
      child: DecoratedBox(
        decoration: Config.background,
        child: Scaffold(
          backgroundColor: const Color(0xFFFFFFFF).withOpacity(0.4),
          body: viewState.widget
        )
      )
    );
  }
}