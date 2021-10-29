import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData.light().copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          toolbarTextStyle: TextStyle(
            fontFamily: 'Nunito',
          ),
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: const TextStyle(fontFamily: 'Nunito'),
              // button: TextStyle(color: Colors.)
              // button: ThemeData.light()!
              //     .textTheme
              //     .button!
              //     .copyWith(color: Colors.amber),
            ));
    // buttonTheme: ButtonThemeData()
  }

  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      textTheme: ThemeData.dark().textTheme.copyWith(
            headline1: const TextStyle(fontFamily: 'Nunito'),
            // button: TextStyle(color: Colors.yellow)
          ),
    );
  }
}
