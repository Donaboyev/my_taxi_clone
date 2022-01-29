import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:my_taxi_clone/app/theme.dart';

import './main_viewmodel.dart';

class MainApp extends StatelessWidget with GlobalTheme {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainAppViewModel>.reactive(
      builder: (context, model, child) => MaterialApp(
        title: "Stacked Template",
        debugShowCheckedModeBanner: false,
        theme: getAppTheme(context),
        themeMode: model.isDarkMode ? ThemeMode.dark : ThemeMode.light,
        darkTheme: getAppTheme(context, lightThemeEnabled: false),
      ),
      viewModelBuilder: () => MainAppViewModel(),
    );
  }
}
