import 'package:doon/view/quiz/quiz.dart';
import 'package:doon/view/result/result.dart';
import 'package:doon/view/setting/setting.dart';
import 'package:doon/view/top/top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ViewState {
  top(
    text: "", 
    widget: Top()
  ),
  quiz(
    text: "", 
    widget: Quiz()
  ),
  result(
    text: "", 
    widget: Result()
  ),
  setting(
    text: "", 
    widget: Setting()
  );

  final String text;
  final Widget widget;

  const ViewState({
    required this.text,
    required this.widget
  });
}

final viewStateProvider = NotifierProvider<
  ViewStateNotifier, ViewState
>(
  ViewStateNotifier.new
);

class ViewStateNotifier extends Notifier<ViewState> {
  @override 
  ViewState build() => ViewState.top;

  void toTop() => state = ViewState.top;
  void toQuiz() => state = ViewState.quiz;
  void toResult() => state = ViewState.result;
  void toSetting() => state = ViewState.setting;
}