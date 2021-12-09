import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  Color _textColor = Colors.white;
  Color get textColor => _textColor;

  Color _bgColor = Color(0xff25252d);
  Color get bgColor => _bgColor;
}