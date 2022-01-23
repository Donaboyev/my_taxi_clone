import 'package:flutter/material.dart';

import 'app/locator.dart';
import 'ui/screens/main/main_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MainApp());
}