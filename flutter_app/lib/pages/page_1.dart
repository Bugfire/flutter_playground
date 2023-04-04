import 'package:flutter/material.dart';

class Page1Page extends StatefulWidget {
  const Page1Page({super.key});
  final String title = 'ページ1';

  @override
  State<Page1Page> createState() => _Page1Page();
}

class _Page1Page extends State<Page1Page> {
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
                    Text("戻る", style: TextStyle(fontSize: 40.0)),
                  ],
                ),
                // ignore: avoid_print
                onPressed: () => {Navigator.of(context).pop()}),
          ],
        ),
      ),
      // const Icon(Icons.add)
    );
  }
}
