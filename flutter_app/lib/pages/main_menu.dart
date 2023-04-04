import 'package:flutter/material.dart';
import './page_1.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({super.key});
  final String title = 'メインメニュー';

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
                  Text("ボタン1", style: TextStyle(fontSize: 40.0)),
                ],
              ),
              onPressed: () => {
                // ignore: avoid_print
                print("ボタン1"),
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Page1Page();
                }))
              },
            ),
            TextButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.timelapse, size: 40.0),
                  Text("ボタン2", style: TextStyle(fontSize: 40.0)),
                ],
              ),
              // ignore: avoid_print
              onPressed: () => {print("ボタン2")},
            )
          ],
        ),
      ),
      // const Icon(Icons.add)
    );
  }
}