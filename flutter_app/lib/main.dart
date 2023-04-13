import 'package:flutter/material.dart';
import 'app.dart';
import 'i18n.dart';
import 'i18n/strings.g.dart';

void main() async {
  // slang (i18n)
  WidgetsFlutterBinding.ensureInitialized();
  await i18nInit();

  // Start
  runApp(TranslationProvider(child: const MyApp()));
}
