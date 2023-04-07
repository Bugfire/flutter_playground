import 'package:flutter/material.dart';
import '../i18n/strings.g.dart';

class DevPage extends StatefulWidget {
  DevPage({super.key});
  final String title = t.dev_menu.title;

  @override
  State<DevPage> createState() => _DevPage();
}

class _DevPage extends State<DevPage> {
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
                children: [
                  const Icon(Icons.search, size: 40.0),
                  Text(t.dev_menu.read, style: const TextStyle(fontSize: 40.0)),
                ],
              ),
              onPressed: () => {},
            ),
          ],
        ),
      ),
      // const Icon(Icons.add)
    );
  }
}
