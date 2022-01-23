import 'package:flutter/material.dart';

import './colors.dart';

mixin GlobalTheme {
  _getTextColor(bool lightThemeEnabled) {
    return lightThemeEnabled ? backgroundDark : backgroundLight;
  }

  getAppTheme(BuildContext context, {bool lightThemeEnabled = true}) {
    var textTheme = Theme.of(context).textTheme.apply(
        fontFamily: 'Lexend Deca',
        bodyColor: _getTextColor(lightThemeEnabled),
        decorationColor: _getTextColor(lightThemeEnabled));

    return ThemeData(
      fontFamily: 'Lexend Deca',
      primarySwatch: Colors.lightGreen,
      errorColor: error,
      textTheme: textTheme,
      unselectedWidgetColor:
          lightThemeEnabled ? textSecondaryDark : textSecondaryLight,
      primaryColor: primary,
      backgroundColor: lightThemeEnabled ? backgroundLight : backgroundDark,
      canvasColor: lightThemeEnabled ? surfaceLight : surfaceDark,
      disabledColor: lightThemeEnabled ? textSecondaryLight : textSecondaryDark,
      iconTheme: const IconThemeData(color: primary),
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: primary),
        titleTextStyle: textTheme.headline6,
        toolbarTextStyle: textTheme.headline1,
      ),
      scaffoldBackgroundColor:
          lightThemeEnabled ? backgroundLight : backgroundDark,
    );
  }
}
