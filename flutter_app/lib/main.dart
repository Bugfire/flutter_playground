import 'package:flutter/material.dart';
import 'app.dart';
import 'i18n.dart';

void main() {
  // slang (i18n)
  WidgetsFlutterBinding.ensureInitialized();
  i18nInit();

  // Start
  runApp(const MyApp());
}
