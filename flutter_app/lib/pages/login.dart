import 'package:flutter/material.dart';
import '../i18n/strings.g.dart';
import '../i18n.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  final String title = t.main_menu.title;

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('System (Test)', style: TextStyle(fontSize: 40.0)),
                  ],
                ),
              ),
              onPressed: () => {i18nChangeLocale(Language.system)},
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              child: SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Japanese', style: TextStyle(fontSize: 40.0)),
                  ],
                ),
              ),
              onPressed: () => {i18nChangeLocale(Language.ja)},
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              child: SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('English', style: TextStyle(fontSize: 40.0)),
                  ],
                ),
              ),
              onPressed: () => {i18nChangeLocale(Language.en)},
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              child: SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Chinese (zh)', style: TextStyle(fontSize: 40.0)),
                  ],
                ),
              ),
              onPressed: () => {i18nChangeLocale(Language.zhCn)},
            )
          ],
        ),
      ),
    );
  }
}
