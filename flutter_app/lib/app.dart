import 'package:flutter/material.dart';
import 'package:flutter_app/pages/dev_page.dart';
import 'package:flutter_app/pages/page_1.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'pages/main_menu.dart';
import 'i18n/strings.g.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: t.name,
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: t.font_family,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) {
          return MainMenuPage();
        },
        '/page1': (context) {
          return const Page1Page();
        },
        '/dev': (context) {
          return DevPage();
        },
      },
    );
  }
}
