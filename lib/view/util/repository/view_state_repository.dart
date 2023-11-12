import 'package:flutter/material.dart';

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