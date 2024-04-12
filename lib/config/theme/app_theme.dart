import 'package:flutter/material.dart';

const radixColor = Color.fromARGB(255, 6, 77, 57);

class AppTheme {

  ThemeData getTheme() => ThemeData(
    colorSchemeSeed: radixColor,
    listTileTheme: const ListTileThemeData(
      iconColor: radixColor
    )
  );
}