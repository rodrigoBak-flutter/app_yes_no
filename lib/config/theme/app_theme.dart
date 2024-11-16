import 'package:flutter/material.dart';

const Color _customAppbar = Color.fromARGB(255, 218, 205, 242);
const Color _customColor = Colors.lightBlue;
const List<Color> _colorTheme = [
  _customColor,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.red,
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor <= _colorTheme.length - 1,
            'Colors must be between 0 and ${_colorTheme.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedColor],
      appBarTheme: const AppBarTheme(color: _customAppbar),
    );
  }
}
