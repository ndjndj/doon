import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ViewState {
  top(
    text: "", 
    widget: Center(child: Text("top"))
  ),
  quiz(
    text: "", 
    widget: Center(child: Text("top"))
  ),
  result(
    text: "", 
    widget: Center(child: Text("top"))
  ),
  setting(
    text: "", 
    widget: Center(child: Text("top"))
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