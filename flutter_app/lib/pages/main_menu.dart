import 'package:flutter/material.dart';
import './page_1.dart';
import './dev_page.dart';
import '../i18n/strings.g.dart';

class MainMenuPage extends StatefulWidget {
  MainMenuPage({super.key});
  final String title = t.main_menu.title;

  @override
  State<MainMenuPage> createState() => _MainMenuPage();
}

class _MainMenuPage extends State<MainMenuPage> {
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
            TextButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.light, size: 40.0),
                  Text("Lottie", style: TextStyle(fontSize: 40.0)),
                ],
              ),
              onPressed: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const Page1Page();
                }))
              },
            ),
            TextButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.timelapse, size: 40.0),
                  Text(t.dev_menu.title,
                      style: const TextStyle(fontSize: 40.0)),
                ],
              ),
              // ignore: avoid_print
              onPressed: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return DevPage();
                }))
              },
            )
          ],
        ),
      ),
      // const Icon(Icons.add)
    );
  }
}
