import 'package:doon/internal/schema/model/exports_schema.dart';
import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget { 
  const SquareButton({
    super.key,
    required this.quiz
  });

  final QuizSchema quiz;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(4)
        ),
        child: Center(
          child: Text("${quiz.details.length}問"),
        ),
      ),
    );
  }
}